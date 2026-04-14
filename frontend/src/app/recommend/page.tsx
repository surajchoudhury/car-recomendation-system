"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import {
  Building2,
  Route,
  Users,
  Fuel,
  Shield,
  Star,
  Check,
} from "lucide-react";
import { cn } from "@/lib/cn";

const BUDGET_OPTIONS = [
  { value: 300000, label: "₹3 Lakh" },
  { value: 500000, label: "₹5 Lakh" },
  { value: 700000, label: "₹7 Lakh" },
  { value: 800000, label: "₹8 Lakh" },
  { value: 1000000, label: "₹10 Lakh" },
  { value: 1200000, label: "₹12 Lakh" },
  { value: 1500000, label: "₹15 Lakh" },
  { value: 1800000, label: "₹18 Lakh" },
  { value: 2000000, label: "₹20 Lakh" },
  { value: 2500000, label: "₹25 Lakh" },
  { value: 3000000, label: "₹30 Lakh" },
  { value: 4000000, label: "₹40 Lakh" },
  { value: 5000000, label: "₹50 Lakh" },
];

const USAGE_OPTIONS = [
  {
    id: "city",
    label: "City Commute",
    icon: Building2,
    desc: "Daily drives, traffic, short trips",
  },
  {
    id: "highway",
    label: "Highway Cruiser",
    icon: Route,
    desc: "Long drives, road trips, high speeds",
  },
  {
    id: "family",
    label: "Family Car",
    icon: Users,
    desc: "Spacious, safe, comfortable for everyone",
  },
];

const PRIORITY_OPTIONS = [
  {
    id: "mileage",
    label: "Fuel Efficiency",
    icon: Fuel,
    desc: "Best mileage, lowest running cost",
  },
  {
    id: "safety",
    label: "Safety First",
    icon: Shield,
    desc: "Top NCAP rating, more airbags, ESC",
  },
  {
    id: "reviews",
    label: "Highly Rated",
    icon: Star,
    desc: "Best user reviews and ratings",
  },
];

export default function RecommendPage() {
  const router = useRouter();
  const [step, setStep] = useState(1);
  const [minBudget, setMinBudget] = useState(500000);
  const [maxBudget, setMaxBudget] = useState(2000000);
  const [usage, setUsage] = useState<string[]>([]);
  const [priority, setPriority] = useState("");

  const toggleUsage = (id: string) => {
    setUsage((prev) =>
      prev.includes(id) ? prev.filter((u) => u !== id) : [...prev, id]
    );
  };

  const handleSubmit = () => {
    const params = new URLSearchParams();
    params.set("min", minBudget.toString());
    params.set("max", maxBudget.toString());
    if (usage.length > 0) params.set("usage", usage.join(","));
    if (priority) params.set("priority", priority);
    router.push(`/recommend/results?${params.toString()}`);
  };

  const canProceed = () => {
    if (step === 1) return minBudget < maxBudget;
    if (step === 2) return usage.length > 0;
    if (step === 3) return priority !== "";
    return false;
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-(--primary-light) to-white">
      <div className="mx-auto max-w-2xl px-4 py-12">
        {/* Header */}
        <div className="mb-2 text-center">
          <Link
            href="/"
            className="text-sm text-(--gray-500) hover:text-(--primary)"
          >
            ← Back to Home
          </Link>
        </div>

        {/* Step indicator */}
        <div className="mb-10 flex items-center justify-center gap-2">
          {[1, 2, 3].map((s) => (
            <div key={s} className="flex items-center gap-2">
              <div
                className={cn(
                  "flex h-10 w-10 items-center justify-center rounded-full text-sm font-bold transition-all",
                  {
                    "bg-(--primary) text-white shadow-lg shadow-orange-200": s === step,
                    "bg-(--primary) text-white opacity-60": s < step,
                    "bg-(--gray-200) text-(--gray-500)": s > step,
                  }
                )}
              >
                {s < step ? <Check className="h-5 w-5" /> : s}
              </div>
              {s < 3 && (
                <div
                  className={cn(
                    "h-0.5 w-12 transition-colors",
                    {
                      "bg-(--primary)": s < step,
                      "bg-(--gray-200)": s >= step,
                    }
                  )}
                />
              )}
            </div>
          ))}
        </div>

        {/* Step 1: Budget */}
        {step === 1 && (
          <div className="rounded-2xl bg-white p-8 shadow-lg">
            <h2 className="text-2xl font-bold text-(--gray-900)">
              What&apos;s your budget?
            </h2>
            <p className="mt-2 text-sm text-(--gray-500)">
              Select your comfortable price range (ex-showroom).
            </p>

            <div className="mt-8 grid gap-6 sm:grid-cols-2">
              <div>
                <label className="text-sm font-medium text-(--gray-700)">
                  Minimum Price
                </label>
                <select
                  value={minBudget}
                  onChange={(e) => setMinBudget(Number(e.target.value))}
                  className="mt-2 w-full rounded-lg border border-(--gray-200) bg-white px-4 py-3 text-sm text-(--gray-900) outline-none focus:border-(--primary)"
                >
                  {BUDGET_OPTIONS.map((opt) => (
                    <option key={opt.value} value={opt.value}>
                      {opt.label}
                    </option>
                  ))}
                </select>
              </div>
              <div>
                <label className="text-sm font-medium text-(--gray-700)">
                  Maximum Price
                </label>
                <select
                  value={maxBudget}
                  onChange={(e) => setMaxBudget(Number(e.target.value))}
                  className="mt-2 w-full rounded-lg border border-(--gray-200) bg-white px-4 py-3 text-sm text-(--gray-900) outline-none focus:border-(--primary)"
                >
                  {BUDGET_OPTIONS.map((opt) => (
                    <option key={opt.value} value={opt.value}>
                      {opt.label}
                    </option>
                  ))}
                </select>
              </div>
            </div>

            {minBudget >= maxBudget && (
              <p className="mt-4 text-sm text-red-500">
                Minimum price must be less than maximum price.
              </p>
            )}

            {minBudget < maxBudget && (
              <div className="mt-6 rounded-lg bg-(--primary-light) p-4 text-center">
                <p className="text-sm text-(--gray-700)">
                  Showing cars between{" "}
                  <span className="font-semibold">
                    ₹{(minBudget / 100000).toFixed(0)} Lakh
                  </span>{" "}
                  and{" "}
                  <span className="font-semibold">
                    ₹{(maxBudget / 100000).toFixed(0)} Lakh
                  </span>
                </p>
              </div>
            )}
          </div>
        )}

        {/* Step 2: Usage */}
        {step === 2 && (
          <div className="rounded-2xl bg-white p-8 shadow-lg">
            <h2 className="text-2xl font-bold text-(--gray-900)">
              How will you use this car?
            </h2>
            <p className="mt-2 text-sm text-(--gray-500)">
              Pick all that apply — we&apos;ll use this to find the best match.
            </p>

            <div className="mt-8 grid gap-4">
              {USAGE_OPTIONS.map((opt) => (
                <button
                  key={opt.id}
                  onClick={() => toggleUsage(opt.id)}
                  className={cn(
                    "flex items-center gap-4 rounded-xl border-2 p-5 text-left transition-all",
                    {
                      "border-(--primary) bg-(--primary-light)": usage.includes(opt.id),
                      "border-(--gray-200) hover:border-(--gray-300)": !usage.includes(opt.id),
                    }
                  )}
                >
                  <opt.icon className="h-7 w-7 text-(--primary)" />
                  <div className="flex-1">
                    <p className="font-semibold text-(--gray-900)">
                      {opt.label}
                    </p>
                    <p className="text-sm text-(--gray-500)">{opt.desc}</p>
                  </div>
                  {usage.includes(opt.id) && (
                    <Check className="h-5 w-5 text-(--primary)" />
                  )}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Step 3: Priority */}
        {step === 3 && (
          <div className="rounded-2xl bg-white p-8 shadow-lg">
            <h2 className="text-2xl font-bold text-(--gray-900)">
              What matters most?
            </h2>
            <p className="mt-2 text-sm text-(--gray-500)">
              Pick your #1 priority — we&apos;ll rank results accordingly.
            </p>

            <div className="mt-8 grid gap-4">
              {PRIORITY_OPTIONS.map((opt) => (
                <button
                  key={opt.id}
                  onClick={() => setPriority(opt.id)}
                  className={cn(
                    "flex items-center gap-4 rounded-xl border-2 p-5 text-left transition-all",
                    {
                      "border-(--primary) bg-(--primary-light)": priority === opt.id,
                      "border-(--gray-200) hover:border-(--gray-300)": priority !== opt.id,
                    }
                  )}
                >
                  <opt.icon className="h-7 w-7 text-(--primary)" />
                  <div className="flex-1">
                    <p className="font-semibold text-(--gray-900)">
                      {opt.label}
                    </p>
                    <p className="text-sm text-(--gray-500)">{opt.desc}</p>
                  </div>
                  {priority === opt.id && (
                    <Check className="h-5 w-5 text-(--primary)" />
                  )}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Navigation buttons */}
        <div className="mt-8 flex justify-between">
          {step > 1 ? (
            <button
              onClick={() => setStep((s) => s - 1)}
              className="rounded-lg border border-(--gray-200) bg-white px-6 py-3 text-sm font-medium text-(--gray-700) hover:bg-(--gray-50)"
            >
              ← Back
            </button>
          ) : (
            <div />
          )}
          {step < 3 ? (
            <button
              onClick={() => setStep((s) => s + 1)}
              disabled={!canProceed()}
              className="rounded-lg bg-(--primary) px-8 py-3 text-sm font-medium text-white hover:bg-(--primary-dark) disabled:cursor-not-allowed disabled:opacity-40"
            >
              Next →
            </button>
          ) : (
            <button
              onClick={handleSubmit}
              disabled={!canProceed()}
              className="rounded-lg bg-(--primary) px-8 py-3 text-sm font-medium text-white hover:bg-(--primary-dark) disabled:cursor-not-allowed disabled:opacity-40"
            >
              Find My Cars →
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
