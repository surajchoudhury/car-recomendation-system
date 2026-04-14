import Link from "next/link";

export default function Home() {
  return (
    <div className="flex flex-col">
      {/* Hero Section */}
      <section className="bg-gradient-to-b from-(--primary-light) to-white px-4 py-20">
        <div className="mx-auto max-w-3xl text-center">
          <h1 className="text-4xl font-bold text-(--gray-900) md:text-5xl">
            Find Your <span className="text-(--primary)">Perfect Car</span>
          </h1>
          <p className="mx-auto mt-4 max-w-2xl text-lg text-(--gray-500)">
            Go from &quot;I don&apos;t know what to buy&quot; to &quot;I&apos;m
            confident about my shortlist&quot; — in 3 quick steps.
          </p>

          <Link
            href="/recommend"
            className="mx-auto mt-8 inline-block rounded-full bg-(--primary) px-10 py-4 text-lg font-semibold text-white shadow-lg shadow-orange-200 hover:bg-(--primary-dark)"
          >
            Get Personalized Recommendations →
          </Link>
        </div>
      </section>

      {/* How it works */}
      <section className="bg-white px-4 py-12">
        <div className="mx-auto max-w-7xl text-center">
          <h2 className="text-2xl font-bold text-(--gray-900)">
            How It Works
          </h2>
          <div className="mt-8 grid gap-8 md:grid-cols-3">
            {[
              {
                step: "1",
                title: "Tell Us What You Need",
                desc: "Budget, usage, priorities — 3 quick steps.",
              },
              {
                step: "2",
                title: "Explore & Compare",
                desc: "Browse specs, safety ratings, mileage, and real user reviews.",
              },
              {
                step: "3",
                title: "Build Your Shortlist",
                desc: "Save the cars you love and decide with confidence.",
              },
            ].map((item) => (
              <div
                key={item.step}
                className="flex flex-col items-center rounded-xl border border-(--gray-200) p-8"
              >
                <div className="flex h-12 w-12 items-center justify-center rounded-full bg-(--primary) text-lg font-bold text-white">
                  {item.step}
                </div>
                <h3 className="mt-4 text-lg font-semibold text-(--gray-900)">
                  {item.title}
                </h3>
                <p className="mt-2 text-sm text-(--gray-500)">
                  {item.desc}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="border-t border-(--gray-200) bg-(--gray-50) px-4 py-8">
        <div className="mx-auto flex max-w-7xl flex-col items-center justify-between gap-4 md:flex-row">
          <div className="flex items-center gap-1">
            <span className="text-xl font-bold text-(--primary)">Car</span>
            <span className="text-xl font-bold text-(--gray-900)">
              Dekho
            </span>
          </div>
          <p className="text-sm text-(--gray-500)">
            © 2026 CarDekho. Your smartest car research platform.
          </p>
        </div>
      </footer>
    </div>
  );
}
