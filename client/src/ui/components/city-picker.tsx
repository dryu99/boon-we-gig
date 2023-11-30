"use client";

import { AppCity, CITIES } from "@/lib/city";
import { usePathname, useRouter } from "@/lib/navigation";
import { notFound } from "next/navigation";

// TODO we should actually fetch curr location data in parent and pass into this component
//      we can do this by querying venue table, GROUP BY cities and just getting a list

export const CityPicker = () => {
  const path = usePathname();
  const router = useRouter();

  const pathSegments = path.split("/");
  const city = pathSegments[1]; // 2nd segment should always be city

  // TODO kinda weird we're doing this 404 redirect in the header lol, should prob go in locale layout or sth
  if (!CITIES.includes(city as AppCity)) notFound();

  return (
    <div>
      {/* TODO add translations to props */}
      <select
        className="text-lg -ml-1 underline rounded bg-secondary text-center hover:cursor-pointer"
        // style={{ appearance: "none" }}
        value={city.toLowerCase()}
        onChange={(e) => router.push(`/${e.target.value}`)}
      >
        {CITIES.map((city) => (
          <option key={city} value={city}>
            {city.toUpperCase()}
          </option>
        ))}
      </select>
    </div>
  );
};
