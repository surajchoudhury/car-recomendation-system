import Link from "next/link";
import { createClient } from "@/lib/supabase/server";

export default async function Navbar() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <header className="sticky top-0 z-50 border-b border-(--gray-200) bg-white">
      <div className="mx-auto flex h-16 max-w-7xl items-center justify-between px-4">
        {/* Logo */}
        <Link href="/" className="flex items-center gap-1">
          <span className="text-2xl font-bold text-(--primary)">Car</span>
          <span className="text-2xl font-bold text-(--gray-900)">
            Dekho
          </span>
        </Link>

        {/* Auth */}
        <div className="flex items-center gap-3">
          {user ? (
            <>
              <Link
                href="/shortlist"
                className="rounded-lg px-4 py-2 text-sm font-medium text-(--gray-700) hover:bg-(--gray-50)"
              >
                My Shortlist
              </Link>
              <form action="/auth/signout" method="post">
                <button
                  type="submit"
                  className="rounded-lg border border-(--gray-200) px-4 py-2 text-sm font-medium text-(--gray-700) hover:bg-(--gray-50)"
                >
                  Sign Out
                </button>
              </form>
            </>
          ) : (
            <>
              <Link
                href="/login"
                className="rounded-lg px-4 py-2 text-sm font-medium text-(--gray-700) hover:bg-(--gray-50)"
              >
                Login
              </Link>
              <Link
                href="/signup"
                className="rounded-lg bg-(--primary) px-4 py-2 text-sm font-medium text-white hover:bg-(--primary-dark)"
              >
                Sign Up
              </Link>
            </>
          )}
        </div>
      </div>
    </header>
  );
}
