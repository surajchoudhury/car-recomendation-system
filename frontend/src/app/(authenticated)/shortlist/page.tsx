import { createClient } from "@/lib/supabase/server";
import Link from "next/link";
import CarCard, { CarResult } from "@/components/car-card";
import { ClipboardList } from "lucide-react";
import ErrorMessage from "@/components/error-message";

export default async function ShortlistPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const { data, error } = await supabase
    .from("shortlists")
    .select(
      `
      id, variant_id, created_at,
      variants (
        id, name, fuel_type, transmission, ex_showroom_price,
        models (
          id, name, body_type,
          makes (name),
          safety_ratings (ncap_rating)
        ),
        specs (
          mileage_kmpl, airbags_count, has_esc, power_hp, seating_capacity
        )
      )
    `
    )
    .eq("user_id", user!.id)
    .order("created_at", { ascending: false });

  if (error) {
    return <ErrorMessage />;
  }

  const items = data ?? [];

  return (
    <div className="min-h-screen bg-(--gray-50)">
      <div className="mx-auto max-w-5xl px-4 py-8">
        <div className="mb-6 flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold text-(--gray-900)">
              My Shortlist
            </h1>
            <p className="mt-1 text-sm text-(--gray-500)">
              {items.length} {items.length === 1 ? "car" : "cars"} saved
            </p>
          </div>
          <Link
            href="/recommend"
            className="rounded-lg bg-(--primary) px-5 py-2.5 text-sm font-medium text-white hover:bg-(--primary-dark)"
          >
            + Find More Cars
          </Link>
        </div>

        {items.length === 0 ? (
          <div className="rounded-2xl bg-white p-12 text-center shadow-sm">
            <ClipboardList className="mx-auto h-10 w-10 text-(--gray-400)" />
            <h2 className="mt-4 text-lg font-semibold text-(--gray-900)">
              Your shortlist is empty
            </h2>
            <p className="mt-2 text-sm text-(--gray-500)">
              Get recommendations and save the cars you like.
            </p>
            <Link
              href="/recommend"
              className="mt-6 inline-block rounded-lg bg-(--primary) px-6 py-3 text-sm font-medium text-white hover:bg-(--primary-dark)"
            >
              Get Recommendations
            </Link>
          </div>
        ) : (
          <div className="grid gap-4">
            {items.map((item) => {
              const v = item.variants!;
              const m = v.models!;
              const car: CarResult = {
                model_id: m.id,
                best_variant_id: v.id,
                make_name: m.makes!.name,
                model_name: m.name,
                body_type: m.body_type,
                best_variant: v.name,
                fuel_type: v.fuel_type,
                transmission: v.transmission,
                best_price: v.ex_showroom_price,
                price_min: v.ex_showroom_price,
                price_max: v.ex_showroom_price,
                variant_count: 1,
                mileage: v.specs?.mileage_kmpl ?? 0,
                ncap_rating: m.safety_ratings?.ncap_rating ?? 0,
                airbags: v.specs?.airbags_count ?? 0,
                has_esc: v.specs?.has_esc ?? false,
                has_abs: false,
                seating_capacity: v.specs?.seating_capacity ?? 0,
                engine_cc: 0,
                power_hp: v.specs?.power_hp ?? 0,
                score: 0,
              };
              return (
                <CarCard
                  key={item.id}
                  car={car}
                  shortlisted={true}
                />
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
