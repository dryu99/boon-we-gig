"use client";

import { CITIES } from "@/lib/city";
import { setDefaultCityCookie } from "@/lib/cookie-actions";
import { useRouter } from "@/lib/navigation";

// TODO add translations
export default function IndexPage() {
  const router = useRouter();

  return (
    <div className="flex flex-col items-center">
      <h2 className="">choose a city</h2>
      <div className="flex flex-row">
        {CITIES.map((city) => (
          <div
            className="p-4 text-xl text-secondary hover:underline cursor-pointer"
            onClick={() => {
              setDefaultCityCookie(city.toLowerCase());
              router.push(`/${city.toLowerCase()}`);
            }}
            key={city}
            data-umami-event="index-page-city-select"
            data-umami-event-city={city.toLowerCase()}
          >
            {city.toUpperCase()}
          </div>
        ))}
      </div>
    </div>
  );
}
