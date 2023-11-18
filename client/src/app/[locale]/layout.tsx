import { LocaleConfig } from "@/lib/locale";
import { Footer } from "@/ui/components/footer";
import { Header } from "@/ui/components/header";
import { courier } from "@/ui/fonts";
import { Analytics } from "@vercel/analytics/react";
import { notFound } from "next/navigation";
import Script from "next/script";

// TODO generate dynamic metadata
// export async function generateMetadata({
//   params: {locale}
// }: Omit<Props, 'children'>) {
//   const t = await getTranslations({locale, namespace: 'LocaleLayout'});

//   return {
//     title: t('title')
//   };
// }

// export const generateStaticParams = () => {
//   return LocaleConfig.locales.map((locale) => ({ locale }));
// };

export default function LocaleLayout({
  children,
  params: { locale },
}: {
  children: React.ReactNode;
  params: {
    locale: string;
  };
}) {
  // Validate that the incoming `locale` parameter is valid
  if (!LocaleConfig.locales.includes(locale)) notFound();

  return (
    <html lang={locale}>
      <head>
        <Script
          async
          data-domains="www.boonwegig.com"
          src="https://umami-ten-indol.vercel.app/script.js"
          data-website-id="89ba67d0-9f46-4234-b81b-989a67eba5cc"
        />
      </head>
      <body className={`${courier.className} antialiased`}>
        <main className="mx-auto flex flex-col items-center min-h-screen p-4 bg-primary w-full md:w-5/6 overflow-x-hidden xl:w-[900px]">
          <Header />
          <div className="flex-1">{children}</div>
          <Footer />
          <Analytics />
        </main>
      </body>
    </html>
  );
}
