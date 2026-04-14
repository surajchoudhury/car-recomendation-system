import {
  Fuel,
  Shield,
  CircleDot,
  ShieldCheck,
  Gauge,
  Armchair,
} from "lucide-react";
import { formatPrice } from "@/lib/format-price";
import { cn } from "@/lib/cn";
import ShortlistButton from "@/components/shortlist-button";
import { Database } from "@/lib/database.types";

export type CarResult =
  Database["public"]["Functions"]["recommend_cars"]["Returns"][number];

interface CarCardProps {
  car: CarResult;
  shortlisted: boolean;
  subtitle?: string;
  rank?: number;
}

export default function CarCard({ car, shortlisted, subtitle, rank }: CarCardProps) {
  return (
    <div className="overflow-hidden rounded-xl border border-(--gray-200) bg-white shadow-sm transition-shadow hover:shadow-md">
      <div className={cn({ "flex flex-col sm:flex-row": rank !== undefined })}>
        {rank !== undefined && (
          <div className="flex items-center justify-center bg-(--gray-50) px-4 py-3 sm:px-6">
            <span
              className={cn(
                "flex h-10 w-10 items-center justify-center rounded-full text-sm font-bold",
                {
                  "bg-(--primary) text-white": rank <= 3,
                  "bg-(--gray-200) text-(--gray-500)": rank > 3,
                }
              )}
            >
              #{rank}
            </span>
          </div>
        )}

        <div className="flex-1 p-5">
          <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
            <div>
              <h3 className="text-lg font-bold text-(--gray-900)">
                {car.make_name} {car.model_name}
              </h3>
              <p className="mt-0.5 text-sm text-(--gray-500)">
                {subtitle ?? `${car.best_variant} · ${car.fuel_type} · ${car.transmission}`}
              </p>
              <span className="mt-1 inline-block rounded bg-(--gray-100) px-2 py-0.5 text-xs text-(--gray-500)">
                {car.body_type}
              </span>
            </div>
            <div className="text-right">
              <p className="text-lg font-bold text-(--primary)">
                {formatPrice(car.best_price)}
              </p>
              {car.variant_count > 1 && (
                <p className="text-xs text-(--gray-500)">
                  {car.variant_count} variants: {formatPrice(car.price_min)} –{" "}
                  {formatPrice(car.price_max)}
                </p>
              )}
            </div>
          </div>

          <div className="mt-4 flex flex-wrap gap-x-6 gap-y-2 text-sm">
            {car.mileage && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <Fuel className="h-4 w-4" />
                {car.mileage} km/l
              </span>
            )}
            {car.ncap_rating !== null && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <Shield className="h-4 w-4" />
                {car.ncap_rating}★ NCAP
              </span>
            )}
            {car.airbags !== null && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <CircleDot className="h-4 w-4" />
                {car.airbags} Airbags
              </span>
            )}
            {car.has_esc && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <ShieldCheck className="h-4 w-4" />
                ESC
              </span>
            )}
            {car.power_hp && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <Gauge className="h-4 w-4" />
                {car.power_hp} HP
              </span>
            )}
            {car.seating_capacity && (
              <span className="flex items-center gap-1 text-(--gray-700)">
                <Armchair className="h-4 w-4" />
                {car.seating_capacity} Seats
              </span>
            )}
          </div>

          <ShortlistButton variantId={car.best_variant_id} initialShortlisted={shortlisted} />
        </div>
      </div>
    </div>
  );
}
