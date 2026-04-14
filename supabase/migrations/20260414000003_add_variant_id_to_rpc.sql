-- Update RPC to include best_variant_id for shortlisting

drop function if exists public.recommend_cars(numeric, numeric, text[], text);

create or replace function public.recommend_cars(
  p_min_price numeric,
  p_max_price numeric,
  p_usage text[] default '{}',
  p_priority text default ''
)
returns table (
  model_id uuid,
  best_variant_id uuid,
  make_name text,
  model_name text,
  body_type text,
  best_variant text,
  fuel_type text,
  transmission text,
  best_price numeric,
  price_min numeric,
  price_max numeric,
  variant_count bigint,
  mileage numeric,
  ncap_rating integer,
  airbags integer,
  has_esc boolean,
  has_abs boolean,
  seating_capacity integer,
  engine_cc integer,
  power_hp numeric,
  score numeric
)
language sql stable
as $$
  with scored as (
    select
      m.id                          as model_id,
      v.id                          as variant_id,
      mk.name                       as make_name,
      m.name                        as model_name,
      m.body_type,
      v.name                        as variant_name,
      v.fuel_type,
      v.transmission,
      v.ex_showroom_price,
      s.mileage_kmpl,
      sr.ncap_rating,
      s.airbags_count,
      s.has_esc,
      s.has_abs,
      s.seating_capacity,
      s.engine_cc,
      s.power_hp,
      (
        case when 'city' = any(p_usage)
          then coalesce(s.mileage_kmpl, 0) * 2
          else 0
        end
        + case when 'highway' = any(p_usage)
          then coalesce(sr.ncap_rating, 0) * 8
             + coalesce(s.airbags_count, 0) * 3
             + case when s.has_esc then 8 else 0 end
             + case when s.has_abs then 4 else 0 end
          else 0
        end
        + case when 'family' = any(p_usage)
          then coalesce(s.seating_capacity, 0) * 3
          else 0
        end
        + case when p_priority = 'mileage'
          then coalesce(s.mileage_kmpl, 0) * 4
          else 0
        end
        + case when p_priority = 'safety'
          then coalesce(sr.ncap_rating, 0) * 12
             + coalesce(s.airbags_count, 0) * 4
             + case when s.has_esc then 10 else 0 end
          else 0
        end
        + case when p_priority = 'reviews'
          then coalesce(sr.ncap_rating, 0) * 6
          else 0
        end
      )::numeric as score
    from variants v
    join models m   on m.id = v.model_id
    join makes mk   on mk.id = m.make_id
    left join specs s          on s.variant_id = v.id
    left join safety_ratings sr on sr.model_id = m.id
    where v.ex_showroom_price between p_min_price and p_max_price
      and (
        not ('family' = any(p_usage))
        or m.body_type in ('SUV', 'MPV')
      )
  ),
  ranked as (
    select *,
      row_number() over (partition by model_id order by score desc, ex_showroom_price asc) as rn
    from scored
  )
  select
    r.model_id,
    r.variant_id       as best_variant_id,
    r.make_name,
    r.model_name,
    r.body_type,
    r.variant_name     as best_variant,
    r.fuel_type,
    r.transmission,
    r.ex_showroom_price as best_price,
    agg.price_min,
    agg.price_max,
    agg.variant_count,
    r.mileage_kmpl     as mileage,
    r.ncap_rating,
    r.airbags_count     as airbags,
    r.has_esc,
    r.has_abs,
    r.seating_capacity,
    r.engine_cc,
    r.power_hp,
    r.score
  from ranked r
  join (
    select
      model_id,
      min(ex_showroom_price) as price_min,
      max(ex_showroom_price) as price_max,
      count(*)               as variant_count
    from scored
    group by model_id
  ) agg on agg.model_id = r.model_id
  where r.rn = 1
  order by r.score desc, r.ex_showroom_price asc;
$$;
