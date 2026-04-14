import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { getShortlistedVariantIds } from "@/app/actions/shortlist";
import CarCard from "@/components/car-card";
import Link from "next/link";
import { Search } from "lucide-react";
import { formatPrice } from "@/lib/format-price";
import ErrorMessage from "@/components/error-message";

export default async function ResultsPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>;
}) {
  const params = await searchParams;

  // Guard: must come through the recommendation form
  if (!params.min || !params.max || !params.usage || !params.priority) {
    redirect("/recommend");
  }

  const min = Number(params.min);
  const max = Number(params.max);
  const usage = (typeof params.usage === "string" ? params.usage : "")
    .split(",")
    .filter(Boolean);
  const priority = typeof params.priority === "string" ? params.priority : "";

  const supabase = await createClient();

  const { data, error } = await supabase.rpc("recommend_cars", {
    p_min_price: min,
    p_max_price: max,
    p_usage: usage,
    p_priority: priority,
  });

  if (error) {
    return <ErrorMessage />;
  }

  const results = data ?? [];

  const shortlistedIds = await getShortlistedVariantIds();

  const badges: string[] = [];

  if (usage.includes("city")) badges.push("City Commute");
  if (usage.includes("highway")) badges.push("Highway Cruiser");
  if (usage.includes("family")) badges.push("Family Car");
  if (priority === "mileage") badges.push("Priority: Fuel Efficiency");
  if (priority === "safety") badges.push("Priority: Safety");
  if (priority === "reviews") badges.push("Priority: Highly Rated");

  return (
    <div className="min-h-screen bg-(--gray-50)">
      <div className="mx-auto max-w-5xl px-4 py-8">
        {/* Header */}
        <div className="mb-6 flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h1 className="text-2xl font-bold text-(--gray-900)">
              Your Recommendations
            </h1>
            <p className="mt-1 text-sm text-(--gray-500)">
              {results.length} {results.length === 1 ? "car" : "cars"} matched
              in {formatPrice(min)} – {formatPrice(max)}
            </p>
          </div>
          <Link
            href="/recommend"
            className="rounded-lg border border-(--gray-200) bg-white px-4 py-2 text-sm font-medium text-(--gray-700) hover:bg-(--gray-50)"
          >
            ← Change Preferences
          </Link>
        </div>

        {/* Preference badges */}
        {badges.length > 0 && (
          <div className="mb-6 flex flex-wrap gap-2">
            {badges.map((badge) => (
              <span
                key={badge}
                className="rounded-full bg-(--primary-light) px-3 py-1 text-xs font-medium text-(--primary-dark)"
              >
                {badge}
              </span>
            ))}
          </div>
        )}

        {/* Results */}
        {results.length === 0 ? (
          <div className="rounded-2xl bg-white p-12 text-center shadow-sm">
            <Search className="mx-auto h-10 w-10 text-(--gray-400)" />
            <h2 className="mt-4 text-lg font-semibold text-(--gray-900)">
              No cars found
            </h2>
            <p className="mt-2 text-sm text-(--gray-500)">
              Try adjusting your budget or preferences.
            </p>
            <Link
              href="/recommend"
              className="mt-6 inline-block rounded-lg bg-(--primary) px-6 py-3 text-sm font-medium text-white hover:bg-(--primary-dark)"
            >
              Start Over
            </Link>
          </div>
        ) : (
          <div className="grid gap-4">
            {results.map((car, index) => (
              <CarCard
                key={car.model_id}
                car={car}
                shortlisted={shortlistedIds.includes(car.best_variant_id)}
                subtitle={`Best match: ${car.best_variant} · ${car.fuel_type} · ${car.transmission}`}
                rank={index + 1}
              />
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
