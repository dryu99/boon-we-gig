import { fetchVenueBySlug } from "@/lib/actions";
import { toInstagramProfileLink } from "@/lib/external-links";
import { LocaleToCountryMap } from "@/lib/locale";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { LocationIcon } from "@/ui/svgs/location-icon";
import Image from "next/image";
import { notFound } from "next/navigation";

export default async function VenuePage({
  params,
}: {
  params: { id: string; locale: string };
}) {
  const venue = await fetchVenueBySlug(params.id);

  if (!venue) notFound();

  const externalMapsJson = venue.externalMapsJson;

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
      <div className="flex flex-row justify-center">
        <a
          className="mx-1"
          href={toInstagramProfileLink(venue.instagramUsername)}
        >
          <InstagramIcon />
        </a>
        {externalMapsJson?.googleMapsUrl && (
          <a className="mx-1" href={externalMapsJson?.googleMapsUrl}>
            <Image
              src="/icons/google-maps.png"
              alt="Google Maps Icon"
              width={36}
              height={36}
            />
          </a>
        )}
        {externalMapsJson?.naverMapsUrl && (
          <a className="mx-1" href={externalMapsJson?.naverMapsUrl}>
            <Image
              src="/icons/naver-maps.png"
              alt="Naver Maps Icon"
              width={36}
              height={36}
            />
          </a>
        )}
        {externalMapsJson?.kakaoMapsUrl && (
          <a className="mx-1" href={externalMapsJson?.kakaoMapsUrl}>
            <Image
              src="/icons/kakao-maps.png"
              alt="Kakao Maps Icon"
              width={36}
              height={36}
            />
          </a>
        )}
      </div>
    </div>
  );
}
