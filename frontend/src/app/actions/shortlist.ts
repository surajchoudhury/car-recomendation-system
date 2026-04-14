"use server";

import { createClient } from "@/lib/supabase/server";
import { revalidatePath } from "next/cache";

export async function toggleShortlist(variantId: string) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return { error: "You must be logged in to shortlist cars." };
  }

  // Check if already shortlisted
  const { data: existing } = await supabase
    .from("shortlists")
    .select("id")
    .eq("user_id", user.id)
    .eq("variant_id", variantId)
    .maybeSingle();

  if (existing) {
    const { error } = await supabase.from("shortlists").delete().eq("id", existing.id);
    if (error) return { error: error.message };
    revalidatePath("/shortlist");
    return { added: false };
  } else {
    const { error } = await supabase.from("shortlists").insert({ user_id: user.id, variant_id: variantId });
    if (error) return { error: error.message };
    revalidatePath("/shortlist");
    return { added: true };
  }
}

export async function getShortlistedVariantIds(): Promise<string[]> {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return [];

  const { data } = await supabase.from("shortlists").select("variant_id").eq("user_id", user.id);

  return (data ?? []).map((row) => row.variant_id);
}
