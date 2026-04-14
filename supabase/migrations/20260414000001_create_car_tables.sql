-- Makes (manufacturers)
create table public.makes (
  id uuid default gen_random_uuid() primary key,
  name text not null unique,
  logo_url text,
  created_at timestamptz default now() not null
);

-- Models (under a make)
create table public.models (
  id uuid default gen_random_uuid() primary key,
  make_id uuid references public.makes(id) on delete cascade not null,
  name text not null,
  body_type text not null,
  image_url text,
  created_at timestamptz default now() not null,
  unique (make_id, name)
);

-- Variants (trims of a model, prices live here)
create table public.variants (
  id uuid default gen_random_uuid() primary key,
  model_id uuid references public.models(id) on delete cascade not null,
  name text not null,
  fuel_type text not null,
  transmission text not null,
  ex_showroom_price numeric not null,
  created_at timestamptz default now() not null,
  unique (model_id, name)
);

-- Specs (per variant, includes mileage and safety features)
create table public.specs (
  variant_id uuid references public.variants(id) on delete cascade primary key,
  engine_cc integer,
  power_hp numeric,
  torque_nm numeric,
  mileage_kmpl numeric,
  seating_capacity integer,
  boot_space_liters integer,
  ground_clearance_mm integer,
  kerb_weight_kg integer,
  airbags_count integer,
  has_abs boolean default false,
  has_esc boolean default false
);

-- Safety ratings (per model, NCAP tests the platform)
create table public.safety_ratings (
  model_id uuid references public.models(id) on delete cascade primary key,
  ncap_rating integer check (ncap_rating between 0 and 5)
);

-- Reviews (user reviews on a model)
create table public.reviews (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references public.profiles(id) on delete cascade not null,
  model_id uuid references public.models(id) on delete cascade not null,
  rating integer not null check (rating between 1 and 5),
  title text,
  body text,
  created_at timestamptz default now() not null,
  unique (user_id, model_id)
);

-- Shortlists (user's saved variants)
create table public.shortlists (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references public.profiles(id) on delete cascade not null,
  variant_id uuid references public.variants(id) on delete cascade not null,
  notes text,
  created_at timestamptz default now() not null,
  unique (user_id, variant_id)
);

-- Enable RLS on all tables
alter table public.makes enable row level security;
alter table public.models enable row level security;
alter table public.variants enable row level security;
alter table public.specs enable row level security;
alter table public.safety_ratings enable row level security;
alter table public.reviews enable row level security;
alter table public.shortlists enable row level security;

-- Car data is publicly readable
create policy "Public read makes" on public.makes for select using (true);
create policy "Public read models" on public.models for select using (true);
create policy "Public read variants" on public.variants for select using (true);
create policy "Public read specs" on public.specs for select using (true);
create policy "Public read safety_ratings" on public.safety_ratings for select using (true);
create policy "Public read reviews" on public.reviews for select using (true);

-- Reviews: users can manage their own
create policy "Users can insert own reviews" on public.reviews for insert with check (auth.uid() = user_id);
create policy "Users can update own reviews" on public.reviews for update using (auth.uid() = user_id);
create policy "Users can delete own reviews" on public.reviews for delete using (auth.uid() = user_id);

-- Shortlists: users can only see/manage their own
create policy "Users can read own shortlists" on public.shortlists for select using (auth.uid() = user_id);
create policy "Users can insert own shortlists" on public.shortlists for insert with check (auth.uid() = user_id);
create policy "Users can update own shortlists" on public.shortlists for update using (auth.uid() = user_id);
create policy "Users can delete own shortlists" on public.shortlists for delete using (auth.uid() = user_id);
