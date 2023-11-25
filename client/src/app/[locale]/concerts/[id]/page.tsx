import { fetchMusicEventBySlug } from "@/lib/actions";
import * as DateHelper from "@/lib/date.helper";
import { toInstagramProfileLink } from "@/lib/external-links";
import { extractKeyGenres } from "@/lib/genre";
import { Link } from "@/lib/navigation";
import { getVenueLocaleName } from "@/lib/venue.helper";
import {
  GoogleMapsLink,
  NaverMapsLink,
  KakaoMapsLink,
} from "@/ui/components/external-maps-link";
import { NewTag, FreeTag, GenreTag } from "@/ui/components/music-event-tags";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { LocationIcon } from "@/ui/svgs/location-icon";
import { getTranslations } from "next-intl/server";
import { notFound } from "next/navigation";

// TODO add translations
export default async function ConcertPage({
  params,
}: {
  params: { id: string; locale: string };
}) {
  const musicEvent = await fetchMusicEventBySlug(params.id);

  if (!musicEvent) notFound();

  const t = await getTranslations("static"); // TODO this is duplicated from the shows page lol
  const genres = extractKeyGenres(musicEvent.artists, params.locale);
  const venue = musicEvent.venue;
  const externalMapsJson = venue?.externalMapsJson;
  const dateParts = DateHelper.extractParts(
    musicEvent.startDateTime,
    params.locale
  );

  const isRecent = DateHelper.isRecent(musicEvent.createdAt);
  const showTags = isRecent || musicEvent.isFree || genres.length > 0;

  return (
    <div className="flex flex-col">
      <h2 className="flex flex-col mb-2">
        <span className="text-3xl">
          {/* TODO day of week looks too big in korean */}
          <span className="mr-2">{`${dateParts.dayOfWeek}`}</span>
          <span className="mr-2">{`${dateParts.dateStr}`}</span>
          <span className="mr-2">-</span>
          <span>{`${dateParts.timeStr}`}</span>
        </span>

        {venue && (
          <span>
            <div className="inline-block mr-1" title="Venue">
              <LocationIcon width="16px" />
            </div>
            <Link className="hover:underline" href={`/venues/${venue?.slug}`}>
              {getVenueLocaleName(venue, params.locale)}
            </Link>
          </span>
        )}
      </h2>
      <div className="flex flex-row justify-center mb-5">
        {externalMapsJson?.googleMapsUrl && (
          <div className="mx-1">
            <GoogleMapsLink url={externalMapsJson?.googleMapsUrl} />
          </div>
        )}
        {externalMapsJson?.naverMapsUrl && (
          <div className="mx-1">
            <NaverMapsLink url={externalMapsJson?.naverMapsUrl} />
          </div>
        )}
        {externalMapsJson?.kakaoMapsUrl && (
          <div className="mx-1">
            <KakaoMapsLink url={externalMapsJson?.kakaoMapsUrl} />
          </div>
        )}
      </div>
      <div className="text-center mb-5">
        <h3 className="font-bold">feat.</h3>
        <hr className="w-20 mx-auto mb-1" />
        <div>
          {musicEvent.artists.map((a) => (
            <div key={a.id}>{a.name}</div>
          ))}
        </div>
      </div>

      <div className="text-center mb-5">
        <h3 className="font-bold">details</h3>
        <hr className="w-20 mx-auto mb-2" />
        <div className="flex justify-center">
          <a href={musicEvent.link} data-umami-event="concert-external-link">
            <InstagramIcon />
          </a>
        </div>
      </div>
      {showTags && (
        <div className="text-center">
          <h3 className="font-bold">tags</h3>
          <hr className="w-20 mx-auto mb-1" />
          <div className="flex flex-col">
            {isRecent && <NewTag text={t("new")} />}
            {musicEvent.isFree && <FreeTag text={t("free")} />}
            {genres.map((genre, i) => (
              <GenreTag key={i} genre={genre} />
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
