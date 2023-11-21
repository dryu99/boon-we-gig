import { fetchVenueBySlug } from "@/lib/actions";
import { toInstagramProfileLink } from "@/lib/external-links";
import { LocaleToCountryMap } from "@/lib/locale";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { LocationIcon } from "@/ui/svgs/location-icon";
import { notFound } from "next/navigation";

export default async function VenuePage({
  params,
}: {
  params: { id: string; locale: string };
}) {
  const venue = await fetchVenueBySlug(params.id);

  if (!venue) notFound();

  return (
    <div>
      <div className="flex justify-center">
        <div className="mr-1">
          <LocationIcon width="20px" />
        </div>

        <h2>
          {LocaleToCountryMap[params.locale].includes(venue.country)
            ? venue.localName
            : venue.name}
        </h2>
      </div>
      <a href={toInstagramProfileLink(venue.instagramUsername)}>
        <InstagramIcon />
      </a>
      <p>{JSON.stringify(venue, null, 2)}</p>
    </div>
  );
}
