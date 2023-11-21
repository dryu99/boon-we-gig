import { fetchVenueBySlug } from "@/lib/actions";

export default async function VenuePage({
  params,
}: {
  params: { id: string };
}) {
  const venue = await fetchVenueBySlug(params.id);

  return (
    <div>
      <h1>Venue</h1>
      <h2>{JSON.stringify(venue, null, 2)}</h2>
    </div>
  );
}
