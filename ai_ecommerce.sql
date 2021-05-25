-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2021 pada 23.18
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `qty`, `totalPrice`, `user_id`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 35, 8, 39, NULL, NULL, NULL),
(2, 7, 31, 8, 68, NULL, NULL, NULL),
(3, 12, 32, 3, 82, NULL, NULL, NULL),
(4, 2, 22, 3, 11, NULL, NULL, NULL),
(5, 14, 52, 6, 79, NULL, NULL, NULL),
(6, 11, 94, 8, 57, NULL, NULL, NULL),
(7, 6, 64, 3, 36, NULL, NULL, NULL),
(8, 15, 48, 9, 85, NULL, NULL, NULL),
(9, 7, 8, 9, 33, NULL, NULL, NULL),
(10, 2, 95, 1, 22, NULL, NULL, NULL),
(11, 3, 45, 10, 63, NULL, NULL, NULL),
(12, 18, 55, 6, 81, NULL, NULL, NULL),
(13, 2, 50, 12, 5, NULL, NULL, NULL),
(14, 3, 30, 12, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `clusters`
--

CREATE TABLE `clusters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `clusters`
--

INSERT INTO `clusters` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cluster satu', NULL, NULL, NULL),
(2, 'Cluster dua', NULL, NULL, NULL),
(3, 'Cluster tiga', NULL, NULL, NULL),
(4, 'Cluster empat', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `sweetness` int(11) NOT NULL,
  `spicy` int(11) NOT NULL,
  `malty` int(11) NOT NULL,
  `cluster_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `name`, `image`, `description`, `price`, `stock`, `sweetness`, `spicy`, `malty`, `cluster_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aberfeldy', '1.png', 'A fruity, clean and polished malt with a touch of honey and spice, Aberfeldy 12 Year Old is an excellent introduction to this Highland distillery. Aberfeldys main claim to fame is as the heart of the excellent Dewars blend but whiskies like this are putting it firmly in the spotlight.', 10, 33, 2, 1, 2, 1, NULL, NULL, '2021-05-24 02:02:54', NULL),
(2, 'Aberlour', '2.png', 'All our single malts are made with the best local ingredients of barley and soft water from nearby mountain, Ben Rinnes. Our expertly crafted new spirit is usually matured for a minimum of 12 years both in the finest hand-picked Oloroso Sherry butts and American Oak barrels. It’s this double cask maturation which subtly brings together the characteristics of each cask to create a truly rich and rewardingly complex range of single malts.', 96, 9, 3, 3, 3, 1, NULL, NULL, NULL, NULL),
(3, 'AnCnoc', '3.png', 'Highland single malt scotch whisky anCnoc is a rather curious whisky. You see, this fine single malt is created using traditional production methods. Its just that we use them to make a refreshingly modern whisky (something thats reflected in our contemporary bottle design and packaging today).', 100, 7, 3, 0, 2, 3, NULL, NULL, '2021-05-10 00:01:50', NULL),
(4, 'Ardbeg', '4.png', 'As a replacement for the much-loved 1990 Airigh nam Beist, Ardbeg Corryvreckan had some pretty big shoes to fill, but the good news is that this is a belter, winning Worlds Best Single Malt Whisky at the World Whisky Awards 2010 and Best No Age Statement Scotch from Jim Murrays Whisky Bible.', 41, 22, 1, 2, 2, 2, NULL, NULL, NULL, NULL),
(5, 'Ardmore', '5.png', 'Ardmore distillery is a single malt Scotch whisky distillery, located in the village of Kennethmont, Aberdeenshire. ... Ardmore Traditional Cask was the distillerys single malt. It was bottled at 46% ABV, in bottles embossed with an image of a golden eagle.', 54, 23, 2, 1, 3, 1, NULL, NULL, NULL, NULL),
(6, 'ArranIsleOf', '6.png', 'The initial rush of rich vanilla sweetness gives way to a touch of cinnamon which adds a spicy edge to the soft and sweet texture. The classic Arran citrus notes have rounded with age and reveal new depths of character against a background of sweet oak.', 73, 57, 3, 1, 1, 3, NULL, NULL, NULL, NULL),
(7, 'Auchentoshan', '7.png', 'This Auchentoshan 12-year-old expression replaced the old 10 year-old when the range was totally revamped. Elegant and refined, with those classic Auchentoshan notes of vanilla and almonds.', 83, 75, 2, 1, 2, 3, NULL, NULL, NULL, NULL),
(8, 'Auchroisk', '8.png', 'Made in 2007 at Auchriosk distillery, this Speyside single malt was matured in a single cask for 11 years, before being bottled in August 2018 by indie bottler Mossburn for its Vintage Casks series.', 59, 48, 3, 1, 2, 1, NULL, NULL, NULL, NULL),
(9, 'Aultmore', '9.png', 'Part of Dewars The Last Great Malts range launched in 2014, this 12-year-old Aultmore is the first release from the distillery for a few years and is elegant, light and fruity.', 92, 21, 2, 0, 2, 3, NULL, NULL, NULL, NULL),
(10, 'Balblair', '10.png', 'The 2005 vintage of Balblair is a light, fruity and refreshing dram thats typical of the Highland distillerys style. Matured in casks that previously held bourbon, this single malt has notes of toffee and vanilla alongside orchard citrus and ground spice.', 91, 41, 3, 2, 1, 3, NULL, NULL, NULL, NULL),
(11, 'Balmenach', '11.png', 'Rich and fruity whisky from Balmenach, bottled after long ageing as part of the, appropriately titled, Old & Rare range by Hunter Laing. This takes the distillerys classic Speyside character and amplifies it, layering rich, winter fruit with peppery spice and fresh citrus.', 80, 100, 3, 1, 0, 1, NULL, NULL, NULL, NULL),
(12, 'Belvenie', '12.png', 'A 14-year-old limited-edition Balvenie which finished its maturation in casks which had previously held Caribbean rum. Expect vanilla and toffee notes as the rum contributes extra sweetness to the flavours.', 55, 9, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(13, 'BenNevis', '13.png', 'Made at Ben Nevis distillery, this 23-year-old single malt from That Boutique-y Whisky Company has been matured in a single cask, before being bottled in 2019. Aromas of cereals, candied lemon peel, raspberry liquorice and dried fruits compliment notes of raisins, sultanas, garden herbs and biscuits that fill the palate.', 66, 19, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(14, 'Benriach', '14.png', 'The very first batch of Benriachs Peated Cask Strength series has been matured in a combination of oloroso-sherry and bourbon casks. Warming and toasty with notes of sweet toffee apples, nectarines, tablet and heather smoke.', 18, 44, 2, 2, 2, 3, NULL, NULL, NULL, NULL),
(15, 'Benrinnes', '15.png', 'A 1997 Benrinnes single malt, matured in a single cask for 21 years before being bottled by Daily Drams in 2019, as part of its The Nectar of The Daily Drams.', 87, 67, 2, 1, 3, 1, NULL, NULL, NULL, NULL),
(16, 'Benromach', '16.png', 'Very few malts can stand anything like as much ageing as this Benromach has managed. Which makes it all the more amazing that the whisky inside the bottle can still seem so fresh. Of course, over fifty-five years, the angels get to take more than their fair share - only eighty-three bottles were yielded from the cask - but what remains is a fantastic concentration of flavour and an almost eerie youthfulness.', 49, 69, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(17, 'Bladnoch', '17.png', 'Celebrating the 200th anniversary of Bladnochs foundation, this is a richly sherried 29 Year Old whisky that spent its last 18 months of maturation in Moscatel casks. It was formed from a marriage of two casks, both distilled in 1988, and has notes of sherry, acacia, sweet oak, citrus and dark chocolate.Each of the 200 bottles released comes in a special presentation case and is crowned with a gold stopper designed by the distillerys Australian owner David Prior.', 12, 37, 2, 1, 2, 3, NULL, NULL, NULL, NULL),
(18, 'BlairAthol', '18.png', 'The Rare Malts are a now-discontinued series of cask-strength releases designed by Diageo to showcase some of the hidden treasures in their portfolio. This is a fine cask-strength malt from a great, though little-known, Highland distillery.', 24, 25, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(19, 'Bowmore', '19.png', 'Originally exclusive to travel retail, this 18 Year Old Bowmore is, as the name suggests, a deep and complex Islay single malt. Matured in oloroso and Pedro Ximénez sherry casks, it has rich notes of chocolate, peat-smoke roasted coffee, orange peel and treacle toffee.', 93, 29, 2, 2, 1, 1, NULL, NULL, NULL, NULL),
(20, 'Bruichladdich', '20.png', 'The very last 22 casks from 1985 have been used to create this fantastic edition of Bruichladdichs single malt. The casks were rediscovered in 2012 by then master distiller Jim McEwan, who filled their spirit into fresh bourbon barrels for added depth and complexity. In 2017 the whisky was again rehomed, this time into French oak which had previously held claret from a prestigious chateau. This three month period imbued the bourbon-aged whisky with an extra layer of fruit and sweet notes, as well as a subtle blush colour.', 37, 25, 1, 2, 2, 1, NULL, NULL, NULL, NULL),
(21, 'Bunnahabhain', '21.png', 'A limited-edition 1988 Bunnahabhain single malt that has been finished in a quartet of ex-Marsala hogsheads for three years before being bottled in January 2019. Rich oaky aromas fill the nose, alongside sweet fruit, Marsala, honeyed nuts, berries, floral heather and candied fruit that are echoed in the palate.', 85, 77, 2, 1, 2, 3, NULL, NULL, NULL, NULL),
(22, 'Caol Ila', '22.png', 'Made in 2001 at Caol Ila distillery, this Islay single malt was matured in a single American oak hogshead until being bottled in April 2019 for Gordon & MacPhails Connoisseurs Choice series. Subtle, smoky aromas of fresh citrus, green apple and creamy vanilla fill the nose, and the palate offers notes of bonfire smoke, bright citrus and crunchy apples.', 27, 28, 1, 2, 1, 2, NULL, NULL, NULL, NULL),
(23, 'Cardhu', '23.png', 'A bottling of 1973 vintage Cardhu released as part of Diageos Rare Malts range around the turn of the millenium. A 27 year old dram bottled at a fairly fierce 60.02% ABV.', 41, 91, 3, 1, 2, 3, NULL, NULL, NULL, NULL),
(24, 'Clynelish', '24.png', 'Part of Diageos Special Releases 2015. A blend of four different ages, this Clynelish has that trademark rich waxiness, along with refreshing green apple, lemon and grapefruit notes and a creamy mouthfeel.', 16, 31, 2, 2, 1, 2, NULL, NULL, NULL, NULL),
(25, 'Craigallechie', '25.png', 'Well-aged whisky from Craigellachie, combining the distillerys famously heavy character with elegant orchard fruit and sherry-cask spice. A worth.', 69, 20, 2, 2, 2, 4, NULL, NULL, NULL, NULL),
(26, 'Craigganmore', '26.png', 'The Cragganmore entry in Diageos Distillers Edition series is one of the more unusual – it is finished in port pipes for extra sweetness and fruity depth. This is the 2005 vintage, bottled in 2017.', 17, 76, 3, 1, 2, 3, NULL, NULL, NULL, NULL),
(27, 'Dailuaine', '27.png', 'A tropical-tinger, golden dram from Dailuaine, distilled in 1973 and bottled at an impressive 46 years old by Hunter Laing from the companys oldest stocks of whisky for the Old & Rare range. While Dailuaine is more often for its weighty character, this whisky shows off the fruitier and more tropical side of the distillery, with fresh fruit carefully balanced against riper and richer fruit, and oaky spice. Complex and layered with flavour, it never loses its well-aged elegance.', 73, 87, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(28, 'Dalmore', '28.png', 'A favourite expression in the Dalmore stable, this 15-year-old is elegant and smooth, with lipsmacking texture and the flawless balance one would expect from blending maestro Richard Paterson.', 49, 66, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(29, 'Dalwhinnie', '29.png', 'The 1996 vintage of Dalwhinnie Distillers Edition. Each distillerys DE is finished in a different wood – Dalwhinnies uses oloroso sherry casks, resulting in an added layer of rich fruit.', 90, 32, 2, 1, 2, 3, NULL, NULL, NULL, NULL),
(30, 'Deanston', '30.png', 'A no-age-statement whisky from Deanston bottled at 46.3%. This one is made up of young whisky which is decanted into new American oak casks for its final stages of maturation.', 91, 84, 2, 1, 3, 1, NULL, NULL, NULL, NULL),
(31, 'Dufftown', '31.png', 'A gentle but complex whisky from Dufftown in the heart of Speyside – maybe the most important town in Scottish distilling. This 1975-vintage whisky was bottled at 44 years old by Hunter Laing for the Old & Rare range, and the years have allowed the spirit to become mellow and easy-drinking with loads of character. Orchard and citrus fruit are balanced by soft sweetness and lingering oaky spice – a dram to savour.', 87, 82, 3, 0, 2, 3, NULL, NULL, NULL, NULL),
(32, 'Edradour', '32.png', 'Presented in an elegant Ibisco decanter, this 2005 Edradour 13 Year Old is a single-cask whisky that has been matured for 13 years in oloroso sherry casks and bottled at cask strength. It has rich, sweet and fruity notes on the palate alongside gentle, honeyed cinnamon spice.', 31, 10, 3, 1, 2, 1, NULL, NULL, NULL, NULL),
(33, 'GlenDeveronMacduff', '33.png', 'A 1980s distillery bottling of Glen Deveron with a screw cap, produced for the Italian market.', 18, 22, 3, 1, 2, 4, NULL, NULL, NULL, NULL),
(34, 'GlenElgin', '34.png', 'Glen Elgin 12yo is a top-quality malt, highly sought-after for blends. This is a little-seen single malt expression that represents great value for money.', 24, 33, 3, 1, 1, 3, NULL, NULL, NULL, NULL),
(35, 'GlenGarioch', '35.png', 'Introduced to Glen Gariochs standard range in late 2010, this 12yo is a mix of ex-bourbon and sherry casks, and like the other distillery bottlings since the revamp, has been bottled at a feisty 48%. A real charmer.', 50, 97, 1, 3, 2, 1, NULL, NULL, NULL, NULL),
(36, 'GlenGrant', '36.png', 'Very reliable quality Speyside from a distillery founded in 1840. Glen Grant is one of the worlds best-selling single malts and is particularly popular in Italy. A huge 95 points from Jim Murrays Whisky Bible 2013, along with the title of Single Malt of the Year (10yo & Under).', 62, 44, 2, 0, 1, 3, NULL, NULL, NULL, NULL),
(37, 'GlenKeith', '37.png', 'The first official bottling from the re-opened Glen Keith distillery in Speyside, which was revived in 2013 and whose spirits normally appear in blends such as Chivas Regal and 100 Pipers. This new, no-age-statement whisky is a gentle dram with notes of poached pears, honeycomb and vanilla toffee.', 44, 45, 3, 2, 1, 3, NULL, NULL, NULL, NULL),
(38, 'GlenMoray', '38.png', 'A 2006 Glen Moray single malt from the distillerys Cask Project series, matured in ex-Madeira casks for 13 years, before being bottled. Aromas of baked apple, pear, honey and soft spices fill the nose, complemented by notes of sultana, baking spices, brown sugar and cinnamon-baked apples.', 75, 71, 2, 2, 2, 3, NULL, NULL, NULL, NULL),
(39, 'GlenOrd', '39.png', 'A cask-strength Singleton of Glen Ord, matured in freshly-charred American oak hogsheads for 18 years, before being bottled as part of Diageos 2019 Special Releases. Delicate aromas of ripe apricots, raspberry jam, candied peel and cinnamon rolls mingle with chocolate-covered cherries, peach, sponge cake and barley sugar on the nose. The palate offers notes of apricot frangipane, baking spices, orange peel, dark chocolate, mint and oak spice.', 61, 88, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(40, 'GlenScotia', '40.png', 'Glen Scotia Double Cask starts its life in first-fill bourbon barrels, before being finished in Pedro-Ximenez-sherry casks. Notes of spicy fruit and vanilla.', 63, 31, 2, 0, 2, 3, NULL, NULL, NULL, NULL),
(41, 'GlenSpey', '41.png', 'The only official bottling from Glen Spey, with most of the whisky going into J&B blends.', 70, 94, 3, 1, 2, 3, NULL, NULL, NULL, NULL),
(42, 'Glenallachie', '42.png', 'A miniature of 15-year-old Glenallachie single malt, matured in a combination of Pedro Ximenez and oloroso sherry casks, creating a smooth, rich character. Aromas of raisins, butterscotch and sweet spices fill the nose, and the palate offers notes of dark chocolate, orange peel, banana, raisins and caramel.', 27, 47, 3, 1, 2, 3, NULL, NULL, NULL, NULL),
(43, 'Glendronach', '43.png', 'A dense, heavily-sherried dram from a distillery now producing again after a six-year layoff. A malt best suited to after-dinner sipping.', 54, 16, 2, 1, 2, 1, NULL, NULL, NULL, NULL),
(44, 'Glendullan', '44.png', 'The ancestral home of House Tully, Riverrun, sits at the junction of the Red Fork of the Trident and the Tumblestone River. The ruling Lord of the Riverlands, House Tully embodies the power and ferocity of the rivers it sits between. Using the power found in their positioning, House Tully forged strong alliances and built a history of honour, family and duty. Built along the banks of the River Fiddich, Glendullan Distillery originally relied on the waters it lay beside, using a water wheel to power the entire distillery. Like the Tullys themselves, this single malt can benefit from a splash of water, opening up flavours of green apple, honey and sweet vanilla.', 13, 68, 2, 1, 2, 1, NULL, NULL, NULL, NULL),
(45, 'Glenfarclas', '45.png', 'Glenfarclas 10yo is a straw-gold , delicately light, sweet and malty dram leaving a long slightly spicy finish. Always impeccably well-made, this is a whisky that always delivers in quality.', 58, 66, 4, 2, 3, 1, NULL, NULL, NULL, NULL),
(46, 'Glenfiddich', '46.png', 'A small 20cl bottle of Glenfiddichs flagship 12 year old whisky - as of 2011 the largest selling single malt whisky in the world.', 51, 31, 3, 0, 2, 3, NULL, NULL, NULL, NULL),
(47, 'Glengoyne', '47.png', 'Batch 007 of Glengoynes Cask Strength series is a sweet, malty single malt, and is the first in the collection to be matured in ex-bourbon barrels as well as ex-sherry casks. The palate offers notes of cinnamon, orange, peach and honey.', 84, 9, 2, 1, 2, 3, NULL, NULL, NULL, NULL),
(48, 'Glenkinchie', '48.png', 'Replacing the 10 year-old as the main expression of the Lowland style in the Classic Malts range, this Glenkinchie 12yo is a bit fuller and more complex.', 45, 29, 2, 2, 2, 3, NULL, NULL, NULL, NULL),
(49, 'Glenlivet', '49.png', 'The opening salvo of the Glenlivet range, named in honour of the distillerys founder, George Smith. Its classic Glenlivet, with a creamy and fruity character bolstered by the use of first-fill American oak to mature some of the whisky.', 52, 12, 3, 2, 2, 1, NULL, NULL, NULL, NULL),
(50, 'Glenlossie', '50.png', 'A well-balanced whisky from Glenlossie, one of Speysides hidden gems. This 1975-vintage dram was matured for 44 years before being bottled by Hunter Lang for the Old & Rare range. Its a fruity whisky, with tropical and ripe orchard fruit notes running through from the nose into the palate, before picking up a touch of nuttiness in the finish.', 53, 68, 2, 2, 2, 3, NULL, NULL, NULL, NULL),
(51, 'Glenmorangie', '51.png', 'The original sets a high standard for Highland whisky, and has gone from strength to strength since its slightly controversial packaging redesign a few years ago. Medium-bodied and gently warming, with pleasant spicy notes.', 100, 48, 2, 2, 1, 3, NULL, NULL, NULL, NULL),
(52, 'Glenrothes', '52.png', 'A great whisky for those looking to try Glenrothes for the first time. This sweet, zesty dram has a yellow label that denotes the colour of the grape at the point it is plucked from the vine.', 44, 9, 3, 1, 2, 1, NULL, NULL, NULL, NULL),
(53, 'Glenturret', '53.png', 'The replacement for the old 12yo as the distillerys standard bottling, Glenturret 10yo has a deliciously rich, fruity character. You can see why Famous Grouse is so successful with Glenturret as its backbone.', 66, 20, 3, 2, 2, 1, NULL, NULL, NULL, NULL),
(54, 'Highland Park', '54.png', 'Highland Park 12 Year Old remains one of the gold- standard malts for other distillery bottlings to aspire to. With a delicious sweetness (heather-honey is their preferred description) and a warming, silky mouthfeel, this is a whisky that never lets you down. The greatest all-rounder in the world of malt whisky. Michael Jackson, Michael Jacksons Malt Whisky Companion', 41, 99, 2, 1, 2, 1, NULL, NULL, NULL, NULL),
(55, 'Inchgower', '55.png', 'The first entry in Diageos Special Releases for northern Speysider Inchgower, part of the 2018 edition of the range. Aged for 8 years in refill American-oak hogsheads, this is a great example of the distillerys fruity and salty spirit – its by the coast and the distillers swear the sea gives the spirit its salty tang.', 42, 46, 3, 2, 2, 3, NULL, NULL, NULL, NULL),
(56, 'Isle of Jura', '56.png', 'Elixir is a 10-year-old whisky from Jura distillery. Finished in a combination of American white oak and European sherry casks, this is complex with notes of pineapple, toffee and spice.', 62, 79, 1, 1, 1, 2, NULL, NULL, NULL, NULL),
(57, 'Knochando', '57.png', 'Formerly carrying a vintage, Knockandos ongoing bourbon-cask bottling has now been released as a 12 year old. Light and fruity with spicy hints.', 24, 34, 3, 2, 1, 1, NULL, NULL, NULL, NULL),
(58, 'Lagavulin', '58.png', 'A 20cl bottle of Lagavulin 16 year old. Arguably the most pungent in terms of pure peat of all the Islay whiskies, it is rich and complex.', 100, 100, 1, 1, 1, 2, NULL, NULL, NULL, NULL),
(59, 'Laphroig', '59.png', 'A smoky, complex bourbon barrel matured whisky from Laphroaig, this is the 12th edition of the Islay distillerys ever-popular Cask Strength 10 Year Old single malt. Bottled in February 2020, aromas of sweet biscuits, smoked cedar and Manuka honey mingle with pipe tobacco, old leather, candle wax and hints on vanilla on the nose. The palate offers notes of burnt oak, barbecued marshmallow, toffee, sea salt and Belgian caramel waffles, as well as roasted coffee beans, sticky toffee pudding and white pepper, wrapped in waves of peat smoke.', 79, 76, 2, 0, 1, 2, NULL, NULL, '2021-05-24 02:03:11', NULL),
(60, 'Linkwood', '60.png', 'A 1980s bottle of Linkwood 12yo with a decorative woodcut illustration of a castle on the label.', 31, 71, 3, 1, 1, 3, NULL, NULL, NULL, NULL),
(61, 'Loch Lomond', '61.png', 'A 1980s bottle of Linkwood 12yo with a decorative woodcut illustration of a castle on the label.', 47, 50, 1, 1, 2, 3, NULL, NULL, NULL, NULL),
(62, 'Longmorn', '62.png', 'A bottling of Longmorn from Connoisseurs Choice featuring their old skool black label. Distilled in 1955, when the distillery was still an independent with its own floor maltings, and bottled 24 years later.', 99, 82, 2, 1, 3, 1, NULL, NULL, NULL, NULL),
(63, 'Macallan', '63.png', 'An incredible collectors bottling from Macallan, the third in a range of royal bottlings, with only 1953 sets produced. This set celebrates Queen Elizabeth IIs coronation in 1953, 60 years before the release, and comprises two sherry cask matured whiskies - one from American oak, one from Spanish. This gives a pair of very different looking whiskies, one golden and one deep mahogany, each labelled with a different iconic image of The Queen: The American oak with Cecil Beatons famed coronation portrait and the Spanish oak with a 2004 image by Julian Calder.', 80, 91, 3, 1, 2, 1, NULL, NULL, NULL, NULL),
(64, 'Mannochmore', '64.png', 'Made at Mannochmore distillery in 2008, this Speyside single malt has been matured in a single cask for 10 years, before being bottled in December 2018 for indie bottler Mossburns Vintage Casks series.', 52, 89, 1, 1, 1, 3, NULL, NULL, NULL, NULL),
(65, 'Miltonduff', '65.png', 'A 1994 Miltonduff single malt from Douglas Laings Xtra Old Particular range, matured in a single refill hogshead for a quarter of a century, before being bottled in 2019.', 47, 56, 4, 0, 1, 3, NULL, NULL, NULL, NULL),
(66, 'Mortlach', '66.png', 'The opening entry in the super-premium Mortlach range, combining bourbon- and sherry-matured whisky to create a spicy, rich and flavoursome dram that shows off the distillerys excellent spirit.', 42, 76, 2, 3, 1, 1, NULL, NULL, NULL, NULL),
(67, 'Oban', '67.png', 'The brothers of the Night’s Watch take an oath and pledge their lives to protect the Seven Kingdoms and guard them from the terrors that lie beyond the ancient barrier of ice, The Wall, from their base at Castle Black. There lies a frozen wasteland which, legend has it, is inhabited by giants, wildlings and the Night King and his army of White Walkers who bring with them the long night. Just like Castle Black, Oban Distillery sits at the foot of a steep cliff that overlooks the bay, the frontier between the West Highlands and the Islands of Scotland. The richness of the whisky is balanced with a woody, spicy dryness that would keep even the Night’s Watch warm in winter.', 17, 52, 2, 2, 2, 2, NULL, NULL, NULL, NULL),
(68, 'OldFettercairn', '68.png', 'An old bottling of Old Fettercairn 10 year old. Founded in 1824, the name Old Fettercairn was in use up until then owners Whyte & Mackay were taken into new ownership themselves in 2001/2. We estimate this bottle dates from the 1980s.', 24, 64, 2, 2, 3, 4, NULL, NULL, NULL, NULL),
(69, 'OldPulteney', '69.png', 'An intriguing Old Pulteney thats part of the revamped range for 2018. This non-age-statement single malt has been finished in barrels that previously held peated whisky, giving it mellow smoke notes alongside the classic Pulteney character.', 42, 27, 1, 1, 2, 4, NULL, NULL, NULL, NULL),
(70, 'RoyalBrackla', '70.png', 'Royal Brackla was the first distillery to be allowed to use the Royal title, and 2015 saw it get its own range of single malts. Part of the Last Great Malts series, the 16 Year Old is finished in first-fill oloroso sherry casks and is sweet and spicy, with a hint of smoke in the mix, too.', 94, 29, 3, 2, 2, 4, NULL, NULL, NULL, NULL),
(71, 'RoyalLochnagar', '71.png', 'A favourite of Queen Victoria and Prince Albert, being conveniently situated close by Balmoral Castle. Royal Lochnagar was originally a key ingredient in VAT 69, but most production is now for single malts.', 28, 13, 2, 2, 2, 1, NULL, NULL, NULL, NULL),
(72, 'Scapa', '72.png', 'Scapa Skiren is a 2015 release from the Orkney distillery. Aged in first-fill American oak casks, this is creamy and sweet with notes of tropical fruit and heather.', 49, 23, 2, 1, 2, 1, NULL, NULL, NULL, NULL),
(73, 'Speyburn', '73.png', 'A celebratory release from Speyburn to commemorate the 18th anniversary of Bobby Anderson’s position as distillery manager. This single malt, aged for 18 years in American and Spanish oak casks, has aromas of toffee and sugared almonds, as well as tropical fruits on the nose. The palate holds flavours of rich dark chocolate, toffee and a touch of citrus, with plenty of smoke throughout. The finish is long and smoky, with a sweeter honeyed edge.', 91, 88, 4, 1, 2, 3, NULL, NULL, NULL, NULL),
(74, 'Speyside', '74.png', 'A very special Glenfarclas 1958, bottled by Signatory at forty years old in 1998 as the jewel in the crown for their tenth anniversary celebrations. Less than 500 decanters were produced from a single sherry butt. An incredible 95.59 points in Whiskybase.', 81, 98, 2, 0, 2, 3, NULL, NULL, NULL, NULL),
(75, 'Springbank', '75.png', 'A very special release from Springbank distillery. At 50 years old, this whisky is amongst the oldest releases from the distillery. Origially sold as part of the Millennium set, which included whiskies at 25, 30, 35, 40, 45, and 50 years old.', 92, 8, 2, 2, 1, 1, NULL, NULL, NULL, NULL),
(76, 'Strathisla', '76.png', 'An independent bottling of 8 year old Strathisla by Gordon & Macphail. We think this was bottled in the 1980s.', 42, 99, 2, 2, 3, 1, NULL, NULL, NULL, NULL),
(77, 'Strathmill', '77.png', 'This 25 year old Strathmill – the first appearance of the distillery in the Special Releases range – is the lightest in style of this years line-up. Aged in refill American oak, its sweet and creamy with the distillerys trademark grassiness.', 43, 5, 3, 2, 1, 3, NULL, NULL, NULL, NULL),
(78, 'Talisker', '78.png', 'An easy-drinking Talisker, taking the distillerys classically rugged character and softening it out, while maintaining the smoky and sweet notes the distillery is known for. More approachable, but still definitely Talisker.', 57, 32, 2, 3, 2, 2, NULL, NULL, NULL, NULL),
(79, 'Tamdhu', '79.png', 'Distilled on 2 November 1963 and bottled after more than 50 years in a first-fill sherry butt, this is the oldest ever release from Tamdhu. With just 100 bottles made, this is a rare chance to own a piece of history.', 93, 64, 2, 0, 2, 3, NULL, NULL, NULL, NULL),
(80, 'Tamnavulin', '80.png', 'A very old distillery bottling of sherried Tamnavulin 20yo, produced for the Italian market at some stage in the 1980s, when they were still using the -Glenlivet suffix.', 28, 66, 3, 2, 1, 3, NULL, NULL, NULL, NULL),
(81, 'Teaninich', '81.png', 'Released during the distillery’s 200th year, this Highland single malt was distilled before Teaninich underwent significant expansion. Reflecting its older style of production, the whisky makes an excellent aperitif or a partner to Asian cuisine. Initially sweet and zesty, this dram layers herbal notes under its toffee, lemon and apple flavours.', 100, 34, 2, 2, 0, 3, NULL, NULL, NULL, NULL),
(82, 'Tobermory', '82.png', 'Matured exclusively in ex-bourbon casks, Tobermory 12 Year. Launched in 2019, Tobermory 12 Year Old takes centre-stage in the new core range from the distillery. After a two year hiatus as the distillery underwent extensive refurbishments, Tobermory has introduced new bottlings, inspired by the colours of the Isle of Mull. Old has a vibrant, fruity and spicy character with a subtle, salty edge. This Hebridean single malt has sweet, honeyed aromas of vanilla, ripe oranges and delicate flowers. The palate offers notes of fresh citrus, apples and tropical fruits, followed by creamy toffee, floral honey and a subtly, salty undercurrent.', 35, 63, 1, 0, 2, 3, NULL, NULL, NULL, NULL),
(83, 'Tomatin', '83.png', 'A limited-edition single malt from Tomatin, matured in a collection of 21 casks laid down over the last five decades, including casks that previously held Scotch whisky, bourbon and sherry, as well as re-charred French oak casks. Aromas of sweet pastry, wood shavings, cooked fruit and floral coconut fill the nose. The palate offers notes of Christmas cask, male syrup, red berries, tropical fruits and wax.', 12, 89, 3, 2, 2, 1, NULL, NULL, NULL, NULL),
(84, 'Tomintoul', '84.png', 'This 21-year-old Tomintoul boasts a floral, fruity, spicy character. This will gladden the hearts of fans of mature easy-drinking Speyside whiskies that dont cost the earth.', 81, 10, 3, 2, 2, 3, NULL, NULL, NULL, NULL),
(85, 'Tormore', '85.png', 'A darkly-flavoured, sherry-matured whisky from Tormore bottled by Hunter Laing for the Old & Rare range. This was distilled in 1988 and matured for 31 years in a single oloroso sherry butt, giving it a rich character run through with spice, nuts and dark chocolate, as well as more fragrant notes of tobacco and fruit.', 90, 41, 2, 0, 1, 3, NULL, NULL, NULL, NULL),
(86, 'Tullibardine', '86.png', 'A very rare old 1980s distillery bottling of 5 year old Tullibardine. We estimate this bottle dates from the 1980s.', 35, 15, 3, 2, 2, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(99, '2014_10_12_100000_create_password_resets_table', 1),
(100, '2020_03_31_075813_create_clusters_table', 1),
(101, '2020_03_31_075814_create_users_table', 1),
(102, '2020_04_03_033148_create_items_table', 1),
(103, '2020_04_06_025613_create_carts_table', 1),
(104, '2020_04_07_024135_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `cluster_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `phone`, `cluster_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Roslyn Kunde', 'eula31@champlin.com', NULL, '@a:8a2`rIW', 'gambar1.jpg', 951646, 3, NULL, NULL, NULL, NULL),
(2, 'Jordan Schuppe', 'rylee39@conroy.info', NULL, 'inRxI>B&|,', 'gambar2.jpg', 185004, 2, NULL, NULL, NULL, NULL),
(3, 'Betty Schroeder', 'xbergnaum@gmail.com', NULL, '3+cWU5A0', 'gambar3.jpg', 840435, 4, NULL, NULL, NULL, NULL),
(4, 'Alyson Roob', 'bfranecki@hotmail.com', NULL, 'pA4u;B3wP\'5', 'gambar4.jpg', 877133, 3, NULL, NULL, NULL, NULL),
(5, 'Catalina Emard', 'audreanne.purdy@hotmail.com', NULL, 'r\')h`[1*Ms*+{-Y', 'gambar5.jpg', 425154, 1, NULL, NULL, NULL, NULL),
(6, 'Leola Miller', 'wanda92@hotmail.com', NULL, '%l0TfGBh*R\"aI0mkk%pD', 'gambar6.jpg', 680504, 3, NULL, NULL, NULL, NULL),
(7, 'Prof. Ellis Labadie', 'agleichner@dubuque.org', NULL, '(_K%O$SSfGd^Nk', 'gambar7.jpg', 446375, 1, NULL, NULL, NULL, NULL),
(8, 'Prof. Norberto Donnelly', 'elliott62@corkery.com', NULL, ';#B;2z&I.55PSZIi', 'gambar8.jpg', 394343, 4, NULL, NULL, NULL, NULL),
(9, 'Kasey D\'Amore', 'eorn@gmail.com', NULL, 'V&u+Wn<edL', 'gambar9.jpg', 575578, 1, NULL, NULL, NULL, NULL),
(10, 'Baby Mueller', 'mayer.tatyana@wuckert.info', NULL, 'lVvlhi6N;qF}Wj', 'gambar10.jpg', 726948, 1, NULL, NULL, NULL, NULL),
(11, 'Naufal Hafiz', 'naufal677418873@gmail.com', NULL, '$2y$10$zomSPoEWUtauRETiH71fheQlCN.Fky4L7u5O56LQ6G9/0la6WrtAO', 'kelompok6_1591707440.png', 87780861411, 1, NULL, '2020-06-09 05:57:20', '2021-05-09 23:59:50', NULL),
(12, 'nana', 'nana@gmail.com', NULL, 'asdasdasd', NULL, 62123123123, 1, NULL, NULL, NULL, NULL),
(13, 'asdasdasd', 'asd@asd.com', NULL, '$2y$10$DZxagFVZAwGwedSBGx3YIeckgx2dnunhKQR2t6UK/shXHeEvIJceu', 'Naufal Hafiz_CV_1621956471.png', 87780861411, 4, NULL, '2021-05-25 08:27:51', '2021-05-25 08:27:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_item_id_foreign` (`item_id`);

--
-- Indeks untuk tabel `clusters`
--
ALTER TABLE `clusters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_cluster_id_foreign` (`cluster_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_cluster_id_foreign` (`cluster_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `clusters`
--
ALTER TABLE `clusters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_cluster_id_foreign` FOREIGN KEY (`cluster_id`) REFERENCES `clusters` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_cluster_id_foreign` FOREIGN KEY (`cluster_id`) REFERENCES `clusters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
