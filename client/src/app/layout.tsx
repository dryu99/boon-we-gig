import "./ui/global.css";
import type { Metadata } from "next";
import { karla } from "./ui/fonts";
import { CityPicker } from "./ui/city-picker";

export const metadata: Metadata = {
  title: "BoonWeGig",
  description: "Created with love and uncertainty",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={karla.className}>
        <div className="flex flex-col items-center">
          <h1 className="text-2xl p-8 pb-4">BoonWeGig</h1>
          <CityPicker />
        </div>

        {children}
      </body>
    </html>
  );
}
