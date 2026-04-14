"use client";

import { useState } from "react";
import { Star } from "lucide-react";
import { toggleShortlist } from "@/app/actions/shortlist";
import { cn } from "@/lib/cn";

export default function ShortlistButton({
  variantId,
  initialShortlisted,
}: {
  variantId: string;
  initialShortlisted: boolean;
}) {
  const [shortlisted, setShortlisted] = useState(initialShortlisted);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleClick = async () => {
    setLoading(true);
    setError("");
    const result = await toggleShortlist(variantId);
    if (result.error) {
      setError(result.error);
    } else {
      setShortlisted(result.added ?? false);
    }
    setLoading(false);
  };

  return (
    <div>
      <button
        onClick={handleClick}
        disabled={loading}
        className={cn(
          "mt-3 flex items-center gap-1.5 rounded-lg px-4 py-2 text-sm font-medium transition-colors disabled:opacity-50",
          {
            "bg-(--primary-light) text-(--primary) border border-(--primary)": shortlisted,
            "bg-(--gray-100) text-(--gray-700) hover:bg-(--gray-200)": !shortlisted,
          }
        )}
      >
        <Star className="h-4 w-4" fill={shortlisted ? "currentColor" : "none"} />
        {loading ? "..." : shortlisted ? "Shortlisted" : "Shortlist"}
      </button>
      {error && <p className="mt-1 text-xs text-red-500">{error}</p>}
    </div>
  );
}
