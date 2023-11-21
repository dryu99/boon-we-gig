import { fetchVenueBySlug } from "@/lib/actions";
import { notFound } from "next/navigation";

export default async function VenuePage({
  params,
}: {
  params: { id: string };
}) {
  const venue = await fetchVenueBySlug(params.id);

  if (!venue) notFound();

  return (
    <div>
      <h2>{venue.name}</h2>
      <p>{JSON.stringify(venue, null, 2)}</p>
    </div>
  );
}
