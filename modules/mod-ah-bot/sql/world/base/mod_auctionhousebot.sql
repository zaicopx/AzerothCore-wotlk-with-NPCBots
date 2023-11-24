DROP TABLE IF EXISTS `mod_auctionhousebot`;
CREATE TABLE `mod_auctionhousebot` (
  `auctionhouse` int(11) NOT NULL DEFAULT '0' COMMENT 'mapID of the auctionhouse.',
  `name` char(25) DEFAULT NULL COMMENT 'Text name of the auctionhouse.',
  `minitems` int(11) DEFAULT '0' COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.',
  `maxitems` int(11) DEFAULT '0' COMMENT 'This is the number of items you want to keep in the auction house.',
  `percentgreytradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Grey Trade Goods auction items',
  `percentwhitetradegoods` int(11) DEFAULT '27' COMMENT 'Sets the percentage of the White Trade Goods auction items',
  `percentgreentradegoods` int(11) DEFAULT '12' COMMENT 'Sets the percentage of the Green Trade Goods auction items',
  `percentbluetradegoods` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the Blue Trade Goods auction items',
  `percentpurpletradegoods` int(11) DEFAULT '1' COMMENT 'Sets the percentage of the Purple Trade Goods auction items',
  `percentorangetradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Orange Trade Goods auction items',
  `percentyellowtradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Yellow Trade Goods auction items',
  `percentgreyitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Grey auction items',
  `percentwhiteitems` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the non trade White auction items',
  `percentgreenitems` int(11) DEFAULT '30' COMMENT 'Sets the percentage of the non trade Green auction items',
  `percentblueitems` int(11) DEFAULT '8' COMMENT 'Sets the percentage of the non trade Blue auction items',
  `percentpurpleitems` int(11) DEFAULT '2' COMMENT 'Sets the percentage of the non trade Purple auction items',
  `percentorangeitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Orange auction items',
  `percentyellowitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Yellow auction items',
  `minpricegrey` int(11) DEFAULT '100' COMMENT 'Minimum price of Grey items (percentage).',
  `maxpricegrey` int(11) DEFAULT '150' COMMENT 'Maximum price of Grey items (percentage).',
  `minpricewhite` int(11) DEFAULT '150' COMMENT 'Minimum price of White items (percentage).',
  `maxpricewhite` int(11) DEFAULT '250' COMMENT 'Maximum price of White items (percentage).',
  `minpricegreen` int(11) DEFAULT '800' COMMENT 'Minimum price of Green items (percentage).',
  `maxpricegreen` int(11) DEFAULT '1400' COMMENT 'Maximum price of Green items (percentage).',
  `minpriceblue` int(11) DEFAULT '1250' COMMENT 'Minimum price of Blue items (percentage).',
  `maxpriceblue` int(11) DEFAULT '1750' COMMENT 'Maximum price of Blue items (percentage).',
  `minpricepurple` int(11) DEFAULT '2250' COMMENT 'Minimum price of Purple items (percentage).',
  `maxpricepurple` int(11) DEFAULT '4550' COMMENT 'Maximum price of Purple items (percentage).',
  `minpriceorange` int(11) DEFAULT '3250' COMMENT 'Minimum price of Orange items (percentage).',
  `maxpriceorange` int(11) DEFAULT '5550' COMMENT 'Maximum price of Orange items (percentage).',
  `minpriceyellow` int(11) DEFAULT '5250' COMMENT 'Minimum price of Yellow items (percentage).',
  `maxpriceyellow` int(11) DEFAULT '6550' COMMENT 'Maximum price of Yellow items (percentage).',
  `minbidpricegrey` int(11) DEFAULT '70' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricegrey` int(11) DEFAULT '100' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricewhite` int(11) DEFAULT '70' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricewhite` int(11) DEFAULT '100' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricegreen` int(11) DEFAULT '80' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricegreen` int(11) DEFAULT '100' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceblue` int(11) DEFAULT '75' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75',
  `maxbidpriceblue` int(11) DEFAULT '100' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricepurple` int(11) DEFAULT '80' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricepurple` int(11) DEFAULT '100' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceorange` int(11) DEFAULT '80' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceorange` int(11) DEFAULT '100' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceyellow` int(11) DEFAULT '80' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceyellow` int(11) DEFAULT '100' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100',
  `maxstackgrey` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackwhite` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackgreen` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackblue` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackpurple` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackorange` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackyellow` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `buyerpricegrey` int(11) DEFAULT '1' COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse',
  `buyerpricewhite` int(11) DEFAULT '3' COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse',
  `buyerpricegreen` int(11) DEFAULT '5' COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse',
  `buyerpriceblue` int(11) DEFAULT '12' COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse',
  `buyerpricepurple` int(11) DEFAULT '15' COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse',
  `buyerpriceorange` int(11) DEFAULT '20' COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse',
  `buyerpriceyellow` int(11) DEFAULT '22' COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse',
  `buyerbiddinginterval` int(11) DEFAULT '1' COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes',
  `buyerbidsperinterval` int(11) DEFAULT '1' COMMENT 'number of bids to put in per bidding interval',
  PRIMARY KEY (`auctionhouse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- AHBot auctionhouse configuration
INSERT INTO `mod_auctionhousebot` (`auctionhouse`, `name`, `minitems`, `maxitems`, `percentgreytradegoods`, `percentwhitetradegoods`, `percentgreentradegoods`, `percentbluetradegoods`, `percentpurpletradegoods`, `percentorangetradegoods`, `percentyellowtradegoods`, `percentgreyitems`, `percentwhiteitems`, `percentgreenitems`, `percentblueitems`, `percentpurpleitems`, `percentorangeitems`, `percentyellowitems`, `minpricegrey`, `maxpricegrey`, `minpricewhite`, `maxpricewhite`, `minpricegreen`, `maxpricegreen`, `minpriceblue`, `maxpriceblue`, `minpricepurple`, `maxpricepurple`, `minpriceorange`, `maxpriceorange`, `minpriceyellow`, `maxpriceyellow`, `minbidpricegrey`, `maxbidpricegrey`, `minbidpricewhite`, `maxbidpricewhite`, `minbidpricegreen`, `maxbidpricegreen`, `minbidpriceblue`, `maxbidpriceblue`, `minbidpricepurple`, `maxbidpricepurple`, `minbidpriceorange`, `maxbidpriceorange`, `minbidpriceyellow`, `maxbidpriceyellow`, `maxstackgrey`, `maxstackwhite`, `maxstackgreen`, `maxstackblue`, `maxstackpurple`, `maxstackorange`, `maxstackyellow`, `buyerpricegrey`, `buyerpricewhite`, `buyerpricegreen`, `buyerpriceblue`, `buyerpricepurple`, `buyerpriceorange`, `buyerpriceyellow`, `buyerbiddinginterval`, `buyerbidsperinterval`)
VALUES
(2,'Alliance',250,250,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1),
(6,'Horde',250,250,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1),
(7,'Neutral',250,250,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1);

DROP TABLE IF EXISTS `mod_auctionhousebot_disabled_items`;
CREATE TABLE `mod_auctionhousebot_disabled_items` (
  `item` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Items unavailable to players
INSERT INTO `mod_auctionhousebot_disabled_items`
VALUES
(17), -- Martin Fury
(37), -- Worn Axe
(88), -- Deprecated Old Pants
(91), -- OLDDwarven Initiate's Pants
(100), -- Deprecated Dwarven Squire's Pants
(119), -- Deprecated Rogue's Vest
(128), -- Deprecated Tauren Trapper's Pants
(138), -- Deprecated War Harness
(143), -- Monster - Shield, Stormwind Guard
(156), -- Deprecated Tauren Recruit's Pants
(192), -- Martin's Broken Staff
(734), -- Deprecated Malakai's Medallion
(746), -- Lord Brandon's Tabard (Test)
(763), -- Ice-covered Bracers
(788), -- Test Fire Sword
(813), -- Broken Cog
(862), -- Runed Ring
(875), -- Brown Horse Summoning
(876), -- Worn Wooden Buckler
(895), -- Worgen Skull
(896), -- Worgen Fang
(900), -- Deprecated Nightmare Summoning (Mount)
(905), -- Brown Leather Shoulderpads (Test)
(906), -- Tan Leather Shoulderpads (Test)
(907), -- Black Mail Shoulderpads of might (Test)
(908), -- Plate Shoulderpad (Test)
(909), -- Silver Mail Shoulderpads (Test)
(913), -- Huge Ogre Sword
(931), -- Deprecated Heavy Brown Sack
(945), -- Shadow Sword
(948), -- Nature Sword
(951), -- Tome of Whirlwind (TEST)
(956), -- Deprecated Area Trigger Flag - Jasperlode mine
(958), -- Deprecated Area Trigger Flag - Darkhollow Mine
(960), -- Deprecated Area Trigger Flag - Fargodeep
(964), -- Deprecated Red Linen Shirt
(996), -- Ring of Righteous Flame (TEST)
(997), -- Fire Sword of Crippling
(1014), -- Large Moneybag (old)
(1018), -- Chows Blade of DOOM! (Test)
(1020), -- Leather Helmet D (Test)
(1021), -- Leather Helmet A (test)
(1022), -- Mail Helmet D (test)
(1023), -- Mail Helmet C (test)
(1024), -- Plate Helmet D2 (test)
(1025), -- Plate Helmet D1 (Test)
(1026), -- Plate Helmet D3 (test)
(1027), -- Mail Helmet A (Test)
(1028), -- Deprecated Dented Skullcap
(1029), -- Tablet of Serpent Totem
(1041), -- Horn of the Black Wolf
(1057), -- Tablet of Restoration III
(1113), -- Conjured Bread
(1114), -- Conjured Rye
(1133), -- Horn of the Winter Wolf
(1134), -- Horn of the Gray Wolf
(1146), -- Libram: Resurrection
(1162), -- Pirates Patch (Test)
(1163), -- Dwarven Explorer's Monocle (Test)
(1165), -- Test Food
(1166), -- Dented Buckler
(1167), -- Small Targe
(1189), -- Overseer's Ring
(1192), -- Deprecated Overseer's Helm
(1193), -- Banded Buckler
(1222), -- Broken Tooth
(1254), -- Lesser Firestone (DEPRECATED)
(1255), -- Brackwater Bracers
(1258), -- Bind On Use Test Item
(1259), -- JYoo test item
(1281), -- Deprecated Quiver (TEST)
(1298), -- Deprecated Night Mage Wristguards
(1324), -- Deprecated Parker's Lunch
(1352), -- Cracked Skull Mortar
(1356), -- Commendation - Elwynn Forest
(1363), -- Deprecated Captain Sanders' Eyepatch
(1386), -- Thistlewood Axe
(1389), -- Kobold Mining Mallet
(1450), -- Potion of Fervor
(1487), -- Conjured Pumpernickel
(1623), -- Raptor Skin Pouch
(1672), -- Deprecated Ogre Head
(1700), -- Admin Warlord's Claymore
(1902), -- Monster - Mace, Basic Wooden Hammer
(1911), -- Monster - Tool, Wrench Small
(1914), -- Deprecated Miniature Silver Hammer
(1923), -- Ambassador's Satchel
(1977), -- 20-slot Bag
(2016), -- Dusty Chain Armor
(2055), -- Small Wooden Hammer
(2064), -- Trogg Club
(2081), -- Monster - Torch, Offhand
(2103), -- Test Arrow
(2128), -- Scratched Claymore
(2133), -- Small Shield
(2136), -- Conjured Purified Water
(2184), -- Monster - Dagger Basic
(2189), -- Tigole's Boomstick (TEST)
(2273), -- Guerrilla Armor
(2275), -- Deprecated Sentinel Coif
(2288), -- Conjured Fresh Water
(2305), -- Deprecated Light Winter Cloak
(2306), -- Deprecated Light Winter Boots
(2377), -- Round Buckler
(2410), -- Smoky Torch
(2413), -- Palomino
(2415), -- White Stallion
(2441), -- Ringed Buckler
(2442), -- Reinforced Targe
(2443), -- Metal Buckler
(2444), -- Ornate Buckler
(2477), -- Ravager's Skull
(2481), -- Peon Sword
(2482), -- Inferior Tomahawk
(2483), -- Rough Broad Axe
(2484), -- Small Knife
(2485), -- Splintered Board
(2486), -- Large Stone Mace
(2487), -- Acolyte Staff
(2496), -- Raider Shortsword
(2497), -- Rusted Claymore
(2498), -- Small Tomahawk
(2499), -- Double-bladed Axe
(2500), -- Light Hammer
(2501), -- Wooden Warhammer
(2502), -- Scuffed Dagger
(2503), -- Adept Short Staff
(2550), -- Monster - Bow, Short
(2556), -- Recipe: Elixir of Tongues
(2586), -- Gamemaster's Robe
(2588), -- Deprecated Red Leather Mask
(2599), -- Deprecated Pattern: Forest Silk Gloves
(2638), -- Deprecated Ironband's Powder Approval
(2664), -- Spinner Fang
(2668), -- Threshadon Tooth
(2692), -- Hot Spices
(2693), -- Stormwind Seasoning Salts
(2705), -- Monster - Item, Tankard Metal
(2715), -- Monster - Item, Lantern - Round
(2755), -- Green Hills of Stranglethorn
(2808), -- Torch of Holy Flame
(2810), -- Monster - Mace, Standard Serpent
(2891), -- Letter to Baros
(2918), -- Deprecated Coif of Inner Strength
(2920), -- Sacred Relic
(2921), -- Blessed Relic
(2922), -- Spirit Relic
(2927), -- Creeping Torment
(2929), -- Tomb Rot
(2931), -- Maiden's Anguish
(2932), -- Torment Vine
(2946), -- Broken Balanced Throwing Dagger
(2947), -- Broken Small Throwing Knife
(2995), -- Deprecated Burnished Chain Coif
(3003), -- Relic of the Eye
(3004), -- Relic of the Dead
(3005), -- Relic of Truth
(3031), -- Depricated Razor Arrow
(3034), -- Glyphed Breastplate
(3046), -- Deprecated Glinting Scale Crown
(3052), -- Deprecated Winter Mail Coif
(3062), -- Deprecated Deepwood Gloves
(3063), -- Deprecated Deepwood Helm
(3068), -- Deprecated Silver-thread Cowl
(3107), -- Broken Keen Throwing Knife
(3111), -- Broken Crude Throwing Axe
(3122), -- Codex of Holy Word: Shield III
(3131), -- Broken Weighted Throwing Axe
(3135), -- Broken Sharp Throwing Axe
(3137), -- Broken Deadly Throwing Axe
(3144), -- Grimoire of Burning Spirit II
(3145), -- Off Hand Test Dagger
(3148), -- Work Shirt
(3168), -- Chipped Scale
(3222), -- Wicked Dagger
(3245), -- OLDMonster - Hands, Plate Silver
(3249), -- Conjured test Item
(3260), -- Scarlet Initiate Robes
(3316), -- Alaric's Head
(3320), -- Bonecaster Sash
(3368), -- Monster - Item, Harpoon
(3463), -- Broken Silver Star
(3507), -- Deprecated Test Fishliver Oil
(3513), -- Deprecated Contract for the Magistrate
(3516), -- Lescovar's Head
(3523), -- Unused Black Night Elf Pants
(3524), -- Unused Black Night Elf Boots
(3525), -- Unused Black Night Elf Bracers
(3528), -- Red Leather C03 Breastplate
(3532), -- Unused Red Leather C03 Pants
(3534), -- Unused Red Leather C03 Gloves
(3536), -- Demon Hunter Blindfold
(3537), -- Black Leather D02 Breastplate
(3539), -- Unused Black Leather D02 Pants
(3540), -- Unused Gray Leather D02 Pants
(3541), -- Black Leather D02 Boots
(3543), -- Unused Black Leather D02 Gloves
(3544), -- Unused Gray Leather D02 Gloves
(3547), -- White Leather D03 Breastplate
(3548), -- Unused White Leather D03 Pants
(3549), -- Unused White Leather D03 Gloves
(3557), -- Unused Tabard of Chow
(3584), -- Deprecated Perenolde's Head
(3648), -- Warrior's Buckler
(3675), -- Extinguished Torch
(3686), -- Deprecated Jkaplan TEST
(3707), -- Nagaz Parchment
(3713), -- Soothing Spices
(3738), -- Brewing Rod
(3744), -- Bloodstone Pendant
(3746), -- Deprecated Test Strongbox
(3762), -- Librarian's Satchel
(3772), -- Conjured Spring Water
(3774), -- Monster - Dynamite, Unlit
(3776), -- Crippling Poison II
(3777), -- Lethargy Root
(3865), -- Test Offhand Weapon
(3884), -- Deprecated Cured Leather Cap
(3895), -- TEST Legendary
(3934), -- Deprecated Warden Blade
(3952), -- Mesh Belt
(3953), -- Mesh Boots
(3954), -- Mesh Bracers
(3955), -- Mesh Cloak
(3956), -- Mesh Gloves
(3957), -- Mesh Pants
(3958), -- Mesh Mantle
(3959), -- Mesh Armor
(3977), -- Strapped Belt
(3978), -- Strapped Boots
(3979), -- Strapped Bracers
(3980), -- Strapped Cloak
(3981), -- Strapped Gloves
(3982), -- Strapped Pants
(3983), -- Strapped Shoulderpads
(3984), -- Strapped Armor
(3988), -- Plate Wall Shield
(3991), -- Plated Buckler
(4008), -- Sterling Chain Belt
(4009), -- Sterling Chain Boots
(4010), -- Sterling Chain Bracers
(4011), -- Sterling Chain Cloak
(4012), -- Sterling Chain Gloves
(4013), -- Sterling Chain Pants
(4014), -- Sterling Chain Shoulderpads
(4015), -- Sterling Chain Armor
(4110), -- Master Hunter's Bow
(4111), -- Master Hunter's Rifle
(4116), -- Olmann Sewar
(4143), -- Tome of Conjure Food II
(4191), -- Feathered Leggings
(4192), -- Unused Feathered Gauntlets
(4193), -- Deprecated Feathered Helm
(4196), -- Feathered Mantle
(4200), -- Grimoire of Immolate III
(4213), -- Grimoire of Doom
(4273), -- Codex of Heal
(4278), -- Lesser Bloodstone Ore
(4471), -- Flint and Tinder
(4524), -- Balloo's Memorial
(4573), -- Deprecated Pat's Test Strongbox
(4688), -- Deprecated Hunting Spaulders
(4703), -- Broken Tools
(4704), -- OLDCeremonial Club
(4749), -- Wildmane Well Water
(4761), -- Deprecated Pearled Chain Pants
(4763), -- Blackwood Recurve Bow
(4773), -- Deprecated Blessed Bracers
(4774), -- Deprecated Heavy Bracers
(4842), -- test
(4851), -- Dirt-stained Map
(4853), -- TEST QUEST HELM
(4855), -- Unused Cloth Shoulder A01 Gray
(4856), -- Unused Cloth Shoulder A02 Yellow
(4857), -- Unused Cloth Shoulder B01 Silver
(4858), -- Unused Cloth Shoulder B02 Black
(4868), -- Deprecated Scorched Heart
(4899), -- Test Crossbow
(4900), -- Test Spear
(4901), -- Test Polearm
(4912), -- Test Wand JChow
(4930), -- Handmade Leather Bag
(4943), -- Torka's Egg Cracker [UNUSED]
(4956), -- Test Totem
(4959), -- Throwing Tomahawk
(4965), -- Bloodhoof Hand Axe
(4981), -- Agmond's Belt Pouch
(4985), -- Test Proc Wand
(4988), -- Burning Obsidian Band
(4989), -- Mage Dragon Robe
(4990), -- Scorched Bands
(4996), -- Test Item 1
(5004), -- Mark of the Kirin Tor
(5005), -- Emberspark Pendant
(5008), -- Quicksilver Ring
(5010), -- Inscribed Gold Ring
(5013), -- Fertile Bulb
(5024), -- Frost Vial
(5041), -- TEST Translation: Taurahe
(5043), -- Red Ribboned Gift
(5044), -- Blue Ribboned Gift
(5056), -- Root Sample
(5091), -- test Eric Shirt
(5105), -- Explosive Shell
(5106), -- Red Defias Mask
(5108), -- Dark Iron Leather
(5150), -- Book of Healing Touch III
(5184), -- Filled Crystal Phial
(5220), -- Gnarlpine Fang
(5229), -- Handstitched Leather Bracers
(5232), -- Minor Soulstone
(5235), -- Alchemist's Wand
(5255), -- Quilboar Tomahawk
(5259), -- Flaming Arrows
(5283), -- Monster - Dagger, Ornate Spikey Base
(5330), -- Elven Cup Relic
(5333), -- Mathystra Relic
(5349), -- Conjured Muffin
(5350), -- Conjured Water
(5353), -- Message for Elissa Starbreeze
(5362), -- Chew Toy
(5363), -- Folded Handkerchief
(5364), -- Dry Salt Lick
(5367), -- Primitive Rock Tool
(5370), -- Bent Spoon
(5371), -- Piece of Coral
(5377), -- Scallop Shell
(5378), -- Shane Test (DELETE ME)
(5379), -- Broken Boot Knife
(5389), -- Corrupted Furbolg Totem
(5400), -- Blood of Cobrahn
(5410), -- OLDCeremonial Club
(5417), -- Weapon of Massive Destruction (test)
(5418), -- Weapon of Mass Destruction (test)
(5435), -- Shiny Dinglehopper
(5455), -- Divined Scroll
(5495), -- Black Supe
(5509), -- Healthstone
(5510), -- Greater Healthstone
(5511), -- Lesser Healthstone
(5512), -- Minor Healthstone
(5513), -- Mana Jade
(5515), -- Deprecated Iron Pummel
(5517), -- Tiny Bronze Key
(5518), -- Tiny Iron Key
(5522), -- Spellstone (DEPRECATED)
(5531), -- Deprecated Brakgul Deathbringer's Head
(5545), -- Fast Test Polearm
(5546), -- Fast Test Crossbow
(5548), -- Fast Test Bow
(5549), -- Fast Test Dagger
(5550), -- Fast Test Gun
(5551), -- Fast Test 1H Axe
(5552), -- Fast Test 2H Axe
(5553), -- Fast Test 1H Mace
(5554), -- Fast Test 2H Mace
(5555), -- Fast Test 1H Sword
(5556), -- Fast Test 2H Sword
(5557), -- Fast Test Spear
(5558), -- Fast Test Staff
(5559), -- Fast Test Thrown
(5560), -- Fast Test Wand
(5561), -- Fast Test Generic
(5562), -- The Lay of Ameth'Aran
(5563), -- The Fall of Ameth'Aran
(5600), -- Monster - Claw - Bear
(5603), -- Wizbang's Gunnysack
(5625), -- Deprecated Band of the Order
(5632), -- Cowardly Flight Potion
(5639), -- Filled Jade Phial
(5645), -- Filled Tourmaline Phial
(5646), -- Vial of Blessed Water
(5654), -- Instant Toxin
(5657), -- Recipe: Instant Toxin
(5660), -- Libram: Seal of Righteousness
(5663), -- Horn of the Red Wolf
(5681), -- Corrosive Sap
(5688), -- Test Language Item
(5748), -- Centaur Longbow
(5768), -- Gnome Voucher
(5769), -- Goblin Voucher
(5821), -- Darkstalker Boots
(5822), -- Hedgeseed Gauntlets
(5823), -- Poisonous Mushroom
(5828), -- Ring of Uber Resists (TEST)
(5833), -- Indurium Ore
(5845), -- Flank of Meat
(5859), -- Party Grenade
(5863), -- Guild Charter
(5874), -- Harness: Black Ram
(5875), -- Harness: Blue Ram
(5878), -- Super Snuff
(5896), -- Theramore Guard Medallion UNUSED
(5953), -- TEST SWORD
(5954), -- TEST SWORD 2
(5968), -- Rugged Boots
(6036), -- Rogue Test Dagger
(6130), -- Trapper's Shirt
(6131), -- Trapper's Pants
(6150), -- A Frayed Knot
(6174), -- Twain Random Sword
(6182), -- Dim Torch
(6183), -- Unlit Poor Torch
(6213), -- Test Sharpening Stone
(6225), -- Monster - Item, Fish - Blue
(6227), -- Monster - Item, Fish - Green
(6232), -- Monster - Item, Flowers  - Bouquet Roses
(6255), -- Fishing Pole (JEFFTEST)
(6276), -- Musty Note
(6277), -- Musty Parchment
(6278), -- Musty Scroll
(6279), -- Musty Letter
(6280), -- Musty Missive
(6291), -- Raw Brilliant Smallfish
(6292), -- 10 Pound Mud Snapper
(6294), -- 12 Pound Mud Snapper
(6295), -- 15 Pound Mud Snapper
(6297), -- Old Skull
(6301), -- Old Teamster's Skull
(6307), -- Message in a Bottle
(6309), -- 17 Pound Catfish
(6310), -- 19 Pound Catfish
(6311), -- 22 Pound Catfish
(6343), -- Formula: Imbue Chest - Spirit
(6345), -- Formula: Imbue Cloak - Protection
(6351), -- Dented Crate
(6352), -- Waterlogged Crate
(6353), -- Small Chest
(6354), -- Small Locked Chest
(6355), -- Sturdy Locked Chest
(6356), -- Battered Chest
(6357), -- Sealed Crate
(6358), -- Oily Blackmouth
(6360), -- Steelscale Crushfish
(6363), -- 26 Pound Catfish
(6364), -- 32 Pound Catfish
(6366), -- Darkwood Fishing Pole
(6376), -- Formula: Enchant Boots - Minor Stamina
(6435), -- Infused Burning Gem
(6455), -- Old Wagonwheel
(6478), -- Rat Stompers
(6490), -- Dark Parchment
(6491), -- Heavy Parchment
(6492), -- Sooty Parchment
(6495), -- Weatherbeaten Parchment
(6496), -- Detailed Parchment
(6497), -- Simple Parchment
(6498), -- Inscribed Kodo Leather
(6500), -- Inscribed Kodo Leather
(6501), -- Inscribed Kodo Leather
(6516), -- Imp Summoning Scroll
(6544), -- Voidwalker Summoning Scroll
(6589), -- Viridian Band
(6619), -- Manual: The Path of Defense
(6623), -- Succubus Summoning Scroll
(6643), -- Bloated Smallfish
(6645), -- Bloated Mud Snapper
(6647), -- Bloated Catfish
(6648), -- Stoneskin Totem Scroll
(6649), -- Searing Totem Scroll
(6650), -- Healing Stream Totem Scroll
(6651), -- Broken Wine Bottle
(6673), -- Test HP Ring
(6674), -- Test MP Ring
(6715), -- Ruined Jumper Cables
(6717), -- Gaffer Jack
(6718), -- Electropeller
(6754), -- Large Moneybag
(6766), -- Flayed Demon Skin (old2)
(6834), -- Black Tuxedo
(6891), -- Recipe: Herb Baked Egg
(6896), -- Twain Component Test
(6927), -- Big Will's Ear
(6951), -- Mind-numbing Poison II
(6988), -- Felhunter Summoning Scroll
(7134), -- Sturdy Dragonmaw Shinbone
(7135), -- Broken Dragonmaw Shinbone
(7170), -- Twain Random Sword FOO
(7171), -- TWAIN TEST ITEM VISUAL SWORD
(7187), -- VanCleef's Boots
(7188), -- Stormwind Guard Shield
(7190), -- Scorched Rocket Boots
(7206), -- Mirror Lake Water Sample
(7208), -- Tazan's Key
(7248), -- Twain TEST Cloak
(7268), -- Xavian Water Sample
(7271), -- Flawless Ivory Tusk
(7286), -- Black Whelp Scale
(7287), -- Red Whelp Scale
(7299), -- Test - Magic Stone Helmet
(7333), -- Overseer's Whistle
(7392), -- Green Whelp Scale
(7426), -- Cerulean Ring
(7427), -- Cerulean Talisman
(7428), -- Shadowcat Hide
(7466), -- Vermilion Band
(7467), -- Vermilion Necklace
(7497), -- Ivory Band
(7547), -- Onyx Ring
(7548), -- Onyx Choker
(7550), -- Warrior's Honor
(7678), -- Recipe: Thistle Tea
(7679), -- Shrike Bat Fang
(7680), -- Jadespine Basilisk Scale
(7681), -- Obsidian Golem Shard
(7707), -- Twain Test
(7716), -- Shattered Necklace
(7725), -- Tabard of the Scarlet Crusade DEPRECATED
(7733), -- Staff of Prehistoria
(7737), -- Sethir's Journal
(7748), -- Forcestone Buckler
(7769), -- Filled Brown Waterskin
(7770), -- Filled Blue Waterskin
(7771), -- Filled Red Waterskin
(7807), -- Candy Bar
(7808), -- Chocolate Square
(7867), -- Vessel of Dragon's Blood
(7923), -- Defias Tower Key
(7948), -- Ninja Belt
(7949), -- Ninja Pants
(7950), -- Ninja Armor
(7951), -- Ninja Gloves
(7952), -- Ninja Boots
(7953), -- Mask of Thero-Shan
(7970), -- E.C.A.C.
(7986), -- Plans: Ornate Mithril Breastplate
(7987), -- Plans: Ornate Mithril Helm
(7988), -- Plans: Ornate Mithril Boots
(7994), -- Plans: Orcish War Leggings
(8007), -- Mana Citrine
(8008), -- Mana Ruby
(8072), -- Silixiz's Tower Key
(8075), -- Conjured Sourdough
(8076), -- Conjured Sweet Roll
(8077), -- Conjured Mineral Water
(8078), -- Conjured Sparkling Water
(8079), -- Conjured Crystal Water
(8147), -- Tiny Copper Key
(8164), -- Test Stationery
(8171), -- Rugged Hide
(8350), -- The 1 Ring
(8365), -- Raw Mithril Head Trout
(8366), -- Bloated Trout
(8368), -- Thick Wolfhide
(8383), -- Plain Letter
(8425), -- Parrot Droppings
(8426), -- Large Ruffled Feather
(8427), -- Mutilated Rat Carcass
(8523), -- Field Testing Kit
(8527), -- Sealed Field Testing Kit
(8546), -- Powerful Smelling Salts
(8583), -- Horn of the Skeletal Mount
(8585), -- Tapped Dowsing Widget
(8586), -- Whistle of the Mottled Red Raptor
(8589), -- Old Whistle of the Ivory Raptor
(8590), -- Old Whistle of the Obsidian Raptor
(8627), -- Reins of the Night saber
(8628), -- Reins of the Spotted Nightsaber
(8630), -- Reins of the Bengal Tiger
(8633), -- Reins of the Leopard
(8688), -- Bind On Acquire Test Item
(8708), -- Hammer of Expertise
(8840), -- Renegade Boots
(8964), -- Codex of Flash Heal
(8993), -- Codex of Shadow Protection II
(9214), -- Grimoire of Inferno
(9240), -- Mallet of Zul'Farrak
(9254), -- Cuergo's Treasure Map
(9280), -- Yellow Punch Card
(9281), -- Red Punch Card
(9282), -- Blue Punch Card
(9284), -- Full Leaden Collection Phial
(9311), -- Default Stationery
(9316), -- Prismatic Punch Card
(9319), -- Nimboya's Laden Pike
(9325), -- A Small Stave
(9330), -- Snapshot of Gammerita
(9365), -- High Potency Radioactive Fallout
(9372), -- Sul'thraze the Lasher
(9380), -- Jang'thraze the Protector
(9417), -- Archaedic Shard
(9421), -- Major Healthstone
(9437), -- Untested Basilisk Sample
(9438), -- Acceptable Scorpid Sample
(9439), -- Untested Hyena Sample
(9440), -- Acceptable Basilisk Sample
(9441), -- Acceptable Hyena Sample
(9442), -- Untested Scorpid Sample
(9443), -- Used Monster Sample
(9484), -- Spellshock Leggings
(9593), -- Treant Muisek
(9594), -- Beast Muisek
(9595), -- Hippogryph Muisek
(9596), -- Faerie Dragon Muisek
(9597), -- Mountain Giant Muisek
(9602), -- Brushwood Blade
(9653), -- Speedy Racer Goggles
(9685), -- Will of the Mountain Giant
(9700), -- Monster - Item, Sparkler Blue
(9701), -- Monster - Item, Sparkler Red
(9718), -- Reforged Blade of Heroes
(9888), -- Elven Protector
(10049), -- Diabolist's Blade
(10450), -- Undamaged Hippogryph Feather
(10457), -- Empty Sea Snail Shell
(10464), -- Staff of Command
(10555), -- Resist Test Item
(10579), -- Explosive Arrow
(10595), -- Kum'sha's Junk
(10662), -- Filled Egg of Hakkar
(10664), -- A Note to Magus Rimtori
(10683), -- Explorer's Knapsack
(10691), -- Filled Vial Labeled #1
(10692), -- Filled Vial Labeled #2
(10693), -- Filled Vial Labeled #3
(10694), -- Filled Vial Labeled #4
(10790), -- Gnome Engineer Membership Card
(10791), -- Goblin Engineer Membership Card
(10818), -- Yeh'kinya's Scroll
(11024), -- Evergreen Herb Casing
(11111), -- Broken Sprite Darter Egg
(11131), -- Hive Wall Sample
(11132), -- Unused Scraping Vial
(11149), -- Samophlange Manual
(11170), -- Deprecated Silver Totem of Aquementas
(11222), -- Head of Krom'zar
(11230), -- Encased Fiery Essence
(11264), -- Monster - Mace, Baron Silverlaine
(11270), -- Nixx's Signed Pledge
(11282), -- Oglethorpe's Signed Pledge
(11283), -- Overspark's Signed Pledge
(11364), -- Tabard of Stormwind
(11413), -- Nagmara's Filled Vial
(11470), -- Tablet Transcript
(11507), -- Spotted Hyena Pelt
(11508), -- Gamemaster's Slippers
(11511), -- Cenarion Beacon
(11512), -- Patch of Tainted Skin
(11513), -- Tainted Vitriol
(11514), -- Fel Creep
(11582), -- Fel Salve
(11602), -- Grim Guzzler Key
(11609), -- Altered Black Dragonflight Molt
(11613), -- DEBUG Samophlange Manual Cover
(11616), -- DEBUG Samophlange Manual Page
(11671), -- [PH] Greater Arcane Amalgamation (AGI/FR)
(11672), -- [PH] Greater Arcane Amalgamation (SPI/FR)
(11743), -- Rockfist
(11768), -- Incendic Bracers
(11903), -- Cat Carrier (Corrupted Kitten)
(11947), -- Filled Cursed Ooze Jar
(11949), -- Filled Tainted Ooze Jar
(11950), -- Windblossom Berries
(11951), -- Whipper Root Tuber
(11952), -- Night Dragon's Breath
(11954), -- Filled Pure Sample Jar
(12064), -- Gamemaster Hood
(12104), -- Brindlethorn Tunic
(12105), -- Pridemail Leggings
(12106), -- Boulderskin Breastplate
(12107), -- Whispersilk Leggings
(12186), -- Drakefire Amulet (OLD) (UNUSED)
(12187), -- Test Defense Chest
(12188), -- Test Armor Chest
(12189), -- Test Strength Chest
(12238), -- Darkshore Grouper
(12241), -- Collected Dragon Egg
(12244), -- Test Agility Chest
(12245), -- Test Spirit Chest
(12258), -- Serpent Clasp Belt
(12263), -- Caged Worg Pup
(12302), -- Reins of the Ancient Frostsaber
(12303), -- Reins of the Nightsaber
(12325), -- Reins of the Primal Leopard
(12326), -- Reins of the Tawny Sabercat
(12327), -- Reins of the Golden Sabercat
(12330), -- Horn of the Red Wolf
(12347), -- Filled Cleansing Bowl
(12348), -- Monster - Axe, Horde Badass Copper 01 (Special1H)
(12349), -- Cliffspring River Sample
(12351), -- Horn of the Arctic Wolf
(12353), -- White Stallion Bridle
(12354), -- Palomino Bridle
(12385), -- test
(12446), -- Anvilmar Musket
(12447), -- Thistlewood Bow
(12448), -- Light Hunting Rifle
(12449), -- Primitive Bow
(12468), -- Chilton Wand
(12469), -- Mutilator
(12526), -- TEST Challenge to Urok
(12563), -- Warlord Goretooth's Command
(12567), -- Filled Flasket
(12588), -- Bonespike Shoulder
(12615), -- Savage Mail Tunic
(12616), -- Savage Mail Boots
(12617), -- Savage Mail Shoulders
(12648), -- Imprisoned Felhound Spirit
(12649), -- Imprisoned Infernal Spirit
(12723), -- Good Luck Charm
(12731), -- Pristine Hide of the Beast
(12787), -- Monster - Mace, Horde Bone Claw Hammer
(12789), -- Horn of Uber Buffing (test)
(12847), -- Soul Stained Pike
(12866), -- Jade Bracers
(12885), -- Pamela's Doll
(12904), -- Shawn's Super Special Swami Hat
(12943), -- Monster - Staff, 3 Piece Taped Staff Red
(12947), -- Alex's Ring of Audacity
(12961), -- JEFF TEST SHIELD
(12962), -- JEFF TEST GLOVES
(12970), -- General's Ceremonial Plate
(12971), -- JEFF TEST SWORD
(12972), -- JEFF TEST SWORD II
(12991), -- Monster - Dagger, Curvey Green Blade
(13080), -- Widow's Clutch
(13090), -- Breastplate of the Chosen
(13092), -- Dragonstalker Tunic
(13148), -- Chillpike
(13155), -- Resonating Skull
(13159), -- Bone Dust
(13164), -- Heart of the Scale
(13173), -- Broken Flightblade Throwing Axe
(13175), -- Voone's Twitchbow
(13214), -- TestBoots - Puffed Mail Green
(13242), -- Deprecated Stormrage Boots
(13247), -- Quartermaster Zigris' Footlocker
(13316), -- Monster - Sword2H, Claymore Silver Yellow Glow
(13317), -- Whistle of the Ivory Raptor
(13323), -- Purple Mechanostrider
(13324), -- Red and Blue Mechanostrider
(13325), -- Fluorescent Green Mechanostrider
(13326), -- White Mechanostrider Mod B
(13327), -- Icy Blue Mechanostrider Mod A
(13328), -- Black Ram
(13329), -- Frost Ram
(13337), -- Monster - Staff,Feathered Gold
(13370), -- Vitreous Focuser
(13422), -- Stonescale Eel
(13477), -- Recipe: Superior Mana Potion
(13480), -- Recipe: Major Healing Potion
(13543), -- Krastinov's Bag of Horrors UNUSED
(13586), -- Test Crit Chest
(13602), -- Greater Spellstone (DEPRECATED)
(13603), -- Major Spellstone (DEPRECATED)
(13612), -- Monster - Item, Glass - Purple Wine
(13642), -- Level 15 Test Gear Cloth - Mage/Priest/Warlock
(13643), -- Level 15 Test Gear Leather - Druid/Shaman
(13644), -- Level 15 Test Gear Leather - Hunter/Rogue
(13645), -- Level 15 Test Gear Mail - Paladin/Warrior
(13646), -- Level 20 Test Gear Cloth - Mage/Priest/Warlock
(13647), -- Level 25 Test Gear Cloth - Mage/Priest/Warlock
(13648), -- Level 30 Test Gear Cloth - Mage/Priest/Warlock
(13649), -- Level 35 Test Gear Cloth - Mage/Priest/Warlock
(13650), -- Level 40 Test Gear Cloth - Mage/Priest/Warlock
(13651), -- Level 45 Test Gear Cloth - Mage/Priest/Warlock
(13652), -- Level 50 Test Gear Cloth - Mage/Priest/Warlock
(13653), -- Level 55 Test Gear Cloth - Mage/Priest/Warlock
(13654), -- Level 60 Test Gear Cloth - Mage/Priest/Warlock
(13655), -- Level 65 Test Gear Cloth - Mage
(13656), -- Level 20 Test Gear Mail - Paladin/Warrior
(13657), -- Level 25 Test Gear Mail - Paladin/Warrior
(13658), -- Level 30 Test Gear Mail - Paladin/Warrior
(13659), -- Level 35 Test Gear Mail - Paladin/Warrior
(13660), -- Level 20 Test Gear Leather - Druid/Shaman
(13661), -- Level 25 Test Gear Leather - Druid/Shaman
(13662), -- Level 30 Test Gear Leather - Druid/Shaman
(13663), -- Level 35 Test Gear Leather - Druid/Shaman
(13664), -- Level 20 Test Gear Leather - Hunter/Rogue
(13665), -- Level 25 Test Gear Leather - Hunter/Rogue
(13666), -- Level 30 Test Gear Leather - Hunter/Rogue
(13667), -- Level 35 Test Gear Leather - Hunter/Rogue
(13668), -- Level 40 Test Gear Leather - Druid
(13669), -- Level 45 Test Gear Leather - Druid
(13670), -- Level 50 Test Gear Leather - Druid
(13671), -- Level 55 Test Gear Leather - Druid
(13672), -- Level 60 Test Gear Leather - Druid
(13673), -- Level 65 Test Gear Leather - Druid
(13674), -- Level 40 Test Gear Leather - Rogue
(13675), -- Level 45 Test Gear Leather - Rogue
(13676), -- Level 50 Test Gear Leather - Rogue
(13677), -- Level 55 Test Gear Leather - Rogue
(13678), -- Level 60 Test Gear Leather - Rogue
(13679), -- Level 65 Test Gear Leather - Rogue
(13680), -- Level 40 Test Gear Plate - Paladin/Warrior
(13681), -- Level 45 Test Gear Plate - Paladin/Warrior
(13682), -- Level 50 Test Gear Plate - Paladin/Warrior
(13683), -- Level 55 Test Gear Plate - Paladin/Warrior
(13684), -- Level 60 Test Gear Plate - Paladin/Warrior
(13685), -- Level 65 Test Gear Plate - Paladin
(13686), -- Level 40 Test Gear Mail - Hunter
(13687), -- Level 45 Test Gear Mail - Hunter
(13688), -- Level 50 Test Gear Mail - Hunter
(13689), -- Level 55 Test Gear Mail - Hunter
(13690), -- Level 60 Test Gear Mail - Hunter
(13691), -- Level 65 Test Gear Mail - Hunter
(13692), -- Level 40 Test Gear Mail - Shaman
(13693), -- Level 45 Test Gear Mail - Shaman
(13694), -- Level 50 Test Gear Mail - Shaman
(13695), -- Level 55 Test Gear Mail - Shaman
(13696), -- Level 60 Test Gear Mail - Shaman
(13697), -- Level 65 Test Gear Mail - Shaman
(13699), -- Firestone (DEPRECATED)
(13700), -- Greater Firestone (DEPRECATED)
(13701), -- Major Firestone (DEPRECATED)
(13710), -- Test Stamina Chest
(13711), -- Test Attack Power Chest
(13712), -- Test Sword Chest
(13713), -- Test Dodge Chest
(13714), -- Test Parry Chest
(13715), -- Test Block Chest
(13716), -- Test Haste Chest
(13717), -- Test Hit Chance Chest
(13726), -- [PH] Rising Dawn Gloves
(13727), -- [PH] Brilliant Dawn Gloves
(13728), -- [PH] Shining Dawn Gloves
(13730), -- [PH] Brilliant Dawn Fists
(13731), -- [PH] Brilliant Dawn Gauntlets
(13732), -- [PH] Rising Dawn Mitts
(13733), -- [PH] Rising Dawn Fists
(13734), -- [PH] Rising Dawn Gauntlets
(13736), -- [PH] Shining Dawn Fists
(13737), -- [PH] Shining Dawn Gauntlets
(13738), -- [PH] Cloth Bracers of the Brilliant Dawn
(13739), -- [PH] Cloth Bracers of the Rising Dawn
(13740), -- [PH] Cloth Bracers of the Shining Dawn
(13741), -- [PH] Leather Bracers of the Brilliant Dawn
(13742), -- [PH] Mail Bracers of the Brilliant Dawn
(13743), -- [PH] Plate Bracers of the Brilliant Dawn
(13744), -- [PH] Plate Bracers of the Rising Dawn
(13745), -- [PH] Plate Bracers of the Shining Dawn
(13746), -- [PH] Mail Bracers of the Rising Dawn
(13747), -- [PH] Mail Bracers of the Shining Dawn
(13748), -- [PH] Leather Bracers of the Shining Dawn
(13749), -- [PH] Leather Bracers of the Rising Dawn
(13754), -- Raw Glossy Mightfish
(13755), -- Winter Squid
(13756), -- Raw Summer Bass
(13758), -- Raw Redgill
(13759), -- Raw Nightfin Snapper
(13760), -- Raw Sunscale Salmon
(13762), -- [PH] Robe of the Brilliant Dawn
(13763), -- [PH] Robe of the Rising Dawn
(13764), -- [PH] Robe of the Shining Dawn
(13765), -- [PH] Leather Chestguard of the Brilliant Dawn
(13766), -- [PH] Leather Chestguard of the Shining Dawn
(13767), -- [PH] Leather Chestguard of the Rising Dawn
(13768), -- [PH] Mail Chestguard of the Brilliant Dawn
(13769), -- [PH] Mail Chestguard of the Shining Dawn
(13770), -- [PH] Mail Chestguard of the Rising Dawn
(13771), -- [PH] Plate Chestguard of the Brilliant Dawn
(13772), -- [PH] Plate Chestguard of the Rising Dawn
(13773), -- [PH] Plate Chestguard of the Shining Dawn
(13775), -- [PH] Cloth Leggings of the Rising Dawn
(13776), -- [PH] Cloth Leggings of the Shining Dawn
(13777), -- [PH] Leather Leggings of the Brilliant Dawn
(13778), -- [PH] Leather Leggings of the Rising Dawn
(13779), -- [PH] Leather Leggings of the Shining Dawn
(13780), -- [PH] Mail Leggings of the Brilliant Dawn
(13781), -- [PH] Mail Leggings of the Rising Dawn
(13782), -- [PH] Mail Leggings of the Shining Dawn
(13783), -- [PH] Plate Leggings of the Brilliant Dawn
(13784), -- [PH] Plate Leggings of the Rising Dawn
(13785), -- [PH] Plate Leggings of the Shining Dawn
(13787), -- [PH] Rising Dawn Hat
(13788), -- [PH] Shining Dawn Hat
(13790), -- [PH] Rising Dawn Cap
(13791), -- [PH] Shining Dawn Cap
(13793), -- [PH] Rising Dawn Coif
(13794), -- [PH] Shining Dawn Coif
(13796), -- [PH] Rising Dawn Helm
(13797), -- [PH] Shining Dawn Helm
(13798), -- [PH] Cloth Boots of the Brilliant Dawn
(13801), -- [PH] Leather Boots of the Brilliant Dawn
(13802), -- [PH] Leather Boots of the Rising Dawn
(13803), -- [PH] Leather Boots of the Shining Dawn
(13804), -- [PH] Mail Boots of the Brilliant Dawn
(13805), -- [PH] Mail Boots of the Rising Dawn
(13806), -- [PH] Mail Boots of the Shining Dawn
(13807), -- [PH] Plate Boots of the Brilliant Dawn
(13808), -- [PH] Plate Boots of the Rising Dawn
(13809), -- [PH] Plate Boots of the Shining Dawn
(13875), -- Ironbound Locked Chest
(13876), -- 40 Pound Grouper
(13877), -- 47 Pound Grouper
(13878), -- 53 Pound Grouper
(13879), -- 59 Pound Grouper
(13880), -- 68 Pound Grouper
(13881), -- Bloated Redgill
(13882), -- 42 Pound Redgill
(13883), -- 45 Pound Redgill
(13884), -- 49 Pound Redgill
(13885), -- 34 Pound Redgill
(13886), -- 37 Pound Redgill
(13887), -- 52 Pound Redgill
(13888), -- Darkclaw Lobster
(13889), -- Raw Whitescale Salmon
(13890), -- Plated Armorfish
(13891), -- Bloated Salmon
(13893), -- Large Raw Mightfish
(13901), -- 15 Pound Salmon
(13902), -- 18 Pound Salmon
(13903), -- 22 Pound Salmon
(13904), -- 25 Pound Salmon
(13905), -- 29 Pound Salmon
(13906), -- 32 Pound Salmon
(13907), -- 7 Pound Lobster
(13908), -- 9 Pound Lobster
(13910), -- 15 Pound Lobster
(13911), -- 19 Pound Lobster
(13912), -- 21 Pound Lobster
(13914), -- 70 Pound Mightfish
(13915), -- 85 Pound Mightfish
(13916), -- 92 Pound Mightfish
(13917), -- 103 Pound Mightfish
(13918), -- Reinforced Locked Chest
(13936), -- Dreadmaster's Shroud
(13950), -- Detention Strap
(14062), -- Kodo Mount
(14083), -- Tyrande's Staff
(14339), -- Moonwell Water Tube
(14390), -- Durability Belt
(14392), -- Durability Staff
(14481), -- Pattern: Runecloth Gloves
(14488), -- Pattern: Runecloth Boots
(14543), -- Darkshade Gloves
(14550), -- Bladebane Armguards
(14586), -- Monster - Mace2H, Fist of Omokk
(14645), -- Unfinished Skeleton Key
(14883), -- Test Glaive A
(14884), -- Test Glaive B
(14885), -- Test Glaive C
(14886), -- Test Glaive D
(14887), -- Test Glaive E
(14888), -- Test Glaive F
(14889), -- Test Glaive G
(14890), -- Test Glaive H
(14891), -- Test Glaive I
(14892), -- Test Glaive J
(14894), -- Lily Root
(15102), -- Un'Goro Tested Sample
(15103), -- Corrupt Tested Sample
(15292), -- Green Kodo
(15293), -- Teal Kodo
(15326), -- Broken Gleaming Throwing Axe
(15327), -- Broken Wicked Throwing Dagger
(15409), -- Refined Deeprock Salt
(15410), -- Scale of Onyxia
(15415), -- Blue Dragonscale
(15417), -- Devilsaur Leather
(15419), -- Warbear Leather
(15422), -- Frostsaber Leather
(15423), -- Chimera Leather
(15448), -- Coagulated Rot
(15756), -- Pattern: Runic Leather Headband
(15769), -- Pattern: Onyxia Scale Cloak
(15780), -- Pattern: Onyxia Scale Breastplate
(15843), -- Filled Dreadmist Peak Sampler
(15845), -- Filled Cliffspring Falls Sampler
(15886), -- Timolain's Phylactery
(16024), -- Ashbringer Test 001
(16025), -- Ashbringer Test 002
(16026), -- PVP Plate Helm Alliance
(16041), -- Schematic: Thorium Grenade
(16042), -- Schematic: Thorium Widget
(16047), -- Schematic: Thorium Tube
(16057), -- Explorer's Knapsack
(16061), -- Test Fire Res Shoulders Cloth
(16062), -- Test Fire Res Waist Cloth
(16063), -- Test Fire Res Hands Cloth
(16064), -- Test Fire Res Waist Mail
(16065), -- Test Fire Res Feet Leather
(16066), -- Test Fire Res Feet Mail
(16067), -- Test Fire Res Ring
(16068), -- Test Fire Resist Cloth LockBox
(16069), -- Test Fire Resist Leather LockBox
(16070), -- Test Fire Resist Mail LockBox
(16071), -- Test Fire Resist Plate LockBox
(16074), -- Test Potion LockBox (Warrior)
(16075), -- Test Potion LockBox (Rogue)
(16076), -- Test Potion LockBox (Paladin)
(16077), -- Test Potion LockBox (Hunter)
(16078), -- Test Potion LockBox (Druid)
(16079), -- Test Potion LockBox (Shaman)
(16080), -- Test Potion LockBox (Mage/Priest/Warlock)
(16081), -- Test Potion LockBox (Raid)
(16082), -- Artisan Fishing - The Way of the Lure
(16085), -- Artisan First Aid - Heal Thyself
(16086), -- Test Enchant Chest Health
(16102), -- Test Enchant Chest Mana
(16103), -- Test Enchant Boots Stamina
(16105), -- Test Enchant Bracer Greater Stamina
(16106), -- Test Enchant Weapon Greater Striking
(16107), -- Test Enchant Bracer Greater Spirit
(16108), -- Test Enchant 2H Weapon Greater Impact
(16109), -- Test Enchantments LockBox (Enchanting Items)
(16116), -- Test Nature Res Cloak Cloth
(16117), -- Test Nature Res Hands Cloth
(16118), -- Test Nature Res Legs Cloth
(16119), -- Test Nature Res Wrist Cloth
(16120), -- Test Nature Res Waist Cloth
(16121), -- Test Nature Res Head Cloth
(16122), -- Test Nature Res Shoulders Cloth
(16123), -- Test Nature Res Neck
(16124), -- Test Frost Res Neck
(16125), -- Test Arcane Res Neck
(16126), -- Test Nature Res Waist Leather
(16127), -- Test Nature Res Wrist Leather
(16129), -- Test Nature Res Feet Mail
(16131), -- Test Nature Res Waist Mail
(16132), -- Test Nature Res Wrist Mail
(16134), -- Test Nature Res Shoulders Mail
(16135), -- Test Frost Res Feet Cloth
(16136), -- Test Frost Res Waist Cloth
(16137), -- Test Frost Res Wrist Cloth
(16138), -- Test Frost Res Head Cloth
(16139), -- Test Frost Res Head Leather
(16140), -- Test Nature Res Head Leather
(16141), -- Test Nature Res Head Mail
(16142), -- Test Frost Res Wrist Mail
(16143), -- Test Frost Res Shoulder Mail
(16144), -- Test Frost Res Shoulders Leather
(16145), -- Test Shadow Res Waist Cloth
(16146), -- Test Shadow Res Head Cloth
(16147), -- Test Shadow Res Shoulders Cloth
(16148), -- Test Shadow Res Shoulders Leather
(16149), -- Test Shadow Res Shoulder Mail
(16150), -- Test Shadow Res Waist Leather
(16151), -- Test Arcane Res Feet Cloth
(16152), -- Test Arcane Res Waist Cloth
(16153), -- Test Arcane Res Wrist Cloth
(16154), -- Test Arcane Res Shoulders Cloth
(16155), -- Test Arcane Res Waist Leather
(16156), -- Test Arcane Res Head Leather
(16157), -- Test Arcane Res Feet Mail
(16158), -- Test Arcane Res Wrist Mail
(16159), -- Test Arcane Res Head Mail
(16160), -- Test Arcane Res Shoulders Plate
(16161), -- Test Shadow Res Hands Plate
(16162), -- Test Frost Res Shoulders Plate
(16163), -- Test Arcane Res Waist Mail
(16164), -- Test Arcane Res Hands Mail
(16165), -- Test Arcane Res Legs Mail
(16171), -- Shinsollo
(16172), -- Test Nature Res Hands Plate
(16173), -- Test Frost Resist Cloth LockBox
(16174), -- Test Frost Resist Leather LockBox
(16175), -- Test Frost Resist Mail LockBox
(16176), -- Test Frost Resist Plate LockBox
(16177), -- Test Nature Resist Plate LockBox
(16178), -- Test Nature Resist Leather LockBox
(16179), -- Test Nature Resist Mail LockBox
(16180), -- Test Nature Resist Cloth LockBox
(16181), -- Test Shadow Resist Cloth LockBox
(16182), -- Test Shadow Resist Leather LockBox
(16183), -- Test Shadow Resist Mail LockBox
(16184), -- Test Shadow Resist Plate LockBox
(16185), -- Test Arcane Resist Plate LockBox
(16186), -- Test Arcane Resist Cloth LockBox
(16187), -- Test Arcane Resist Leather LockBox
(16188), -- Test Arcane Resist Mail LockBox
(16211), -- Test Quality Modifier Chest
(16212), -- TEST SWORD 3
(16213), -- Test Quality Modifier Chest
(16302), -- Grimoire of Firebolt (Rank 2)
(16315), -- Sergeant Major's Cape
(16316), -- Grimoire of Firebolt (Rank 3)
(16317), -- Grimoire of Firebolt (Rank 4)
(16318), -- Grimoire of Firebolt (Rank 5)
(16319), -- Grimoire of Firebolt (Rank 6)
(16320), -- Grimoire of Firebolt (Rank 7)
(16321), -- Grimoire of Blood Pact (Rank 1)
(16322), -- Grimoire of Blood Pact (Rank 2)
(16323), -- Grimoire of Blood Pact (Rank 3)
(16324), -- Grimoire of Blood Pact (Rank 4)
(16325), -- Grimoire of Blood Pact (Rank 5)
(16326), -- Grimoire of Fire Shield (Rank 1)
(16327), -- Grimoire of Fire Shield (Rank 2)
(16328), -- Grimoire of Fire Shield (Rank 3)
(16329), -- Grimoire of Fire Shield (Rank 4)
(16330), -- Grimoire of Fire Shield (Rank 5)
(16331), -- Grimoire of Phase Shift
(16334), -- Sergeant's Insignia
(16336), -- Sergeant Major's Cape
(16337), -- Sergeant Major's Cape
(16339), -- Commander's Steed
(16340), -- First Sergeant's Cloak
(16346), -- Grimoire of Torment (Rank 2)
(16347), -- Grimoire of Torment (Rank 3)
(16348), -- Grimoire of Torment (Rank 4)
(16349), -- Grimoire of Torment (Rank 5)
(16350), -- Grimoire of Torment (Rank 6)
(16351), -- Grimoire of Sacrifice (Rank 1)
(16352), -- Grimoire of Sacrifice (Rank 2)
(16353), -- Grimoire of Sacrifice (Rank 3)
(16354), -- Grimoire of Sacrifice (Rank 4)
(16355), -- Grimoire of Sacrifice (Rank 5)
(16356), -- Grimoire of Sacrifice (Rank 6)
(16357), -- Grimoire of Consume Shadows (Rank 1)
(16358), -- Grimoire of Consume Shadows (Rank 2)
(16359), -- Grimoire of Consume Shadows (Rank 3)
(16360), -- Grimoire of Consume Shadows (Rank 4)
(16361), -- Grimoire of Consume Shadows (Rank 5)
(16362), -- Grimoire of Consume Shadows (Rank 6)
(16363), -- Grimoire of Suffering (Rank 1)
(16364), -- Grimoire of Suffering (Rank 2)
(16365), -- Grimoire of Suffering (Rank 3)
(16366), -- Grimoire of Suffering (Rank 4)
(16368), -- Grimoire of Lash of Pain (Rank 2)
(16369), -- Knight-Lieutenant's Silk Boots
(16371), -- Grimoire of Lash of Pain (Rank 3)
(16372), -- Grimoire of Lash of Pain (Rank 4)
(16373), -- Grimoire of Lash of Pain (Rank 5)
(16374), -- Grimoire of Lash of Pain (Rank 6)
(16375), -- Grimoire of Soothing Kiss (Rank 1)
(16376), -- Grimoire of Soothing Kiss (Rank 2)
(16377), -- Grimoire of Soothing Kiss (Rank 3)
(16378), -- Grimoire of Soothing Kiss (Rank 4)
(16379), -- Grimoire of Seduction
(16380), -- Grimoire of Lesser Invisibility
(16381), -- Grimoire of Devour Magic (Rank 2)
(16382), -- Grimoire of Devour Magic (Rank 3)
(16383), -- Grimoire of Devour Magic (Rank 4)
(16384), -- Grimoire of Tainted Blood (Rank 1)
(16385), -- Grimoire of Tainted Blood (Rank 2)
(16386), -- Grimoire of Tainted Blood (Rank 3)
(16387), -- Grimoire of Tainted Blood (Rank 4)
(16388), -- Grimoire of Spell Lock (Rank 1)
(16389), -- Grimoire of Spell Lock (Rank 2)
(16390), -- Grimoire of Paranoia
(16391), -- Knight-Lieutenant's Silk Gloves
(16392), -- Knight-Lieutenant's Leather Boots
(16393), -- Knight-Lieutenant's Dragonhide Footwraps
(16396), -- Knight-Lieutenant's Leather Gauntlets
(16397), -- Knight-Lieutenant's Dragonhide Gloves
(16401), -- Knight-Lieutenant's Chain Boots
(16403), -- Knight-Lieutenant's Chain Gauntlets
(16405), -- Knight-Lieutenant's Plate Boots
(16406), -- Knight-Lieutenant's Plate Gauntlets
(16409), -- Knight-Lieutenant's Lamellar Sabatons
(16410), -- Knight-Lieutenant's Lamellar Gauntlets
(16413), -- Knight-Captain's Silk Raiment
(16414), -- Knight-Captain's Silk Leggings
(16415), -- Lieutenant Commander's Silk Spaulders
(16416), -- Lieutenant Commander's Crown
(16417), -- Knight-Captain's Leather Armor
(16418), -- Lieutenant Commander's Leather Veil
(16419), -- Knight-Captain's Leather Legguards
(16420), -- Lieutenant Commander's Leather Spaulders
(16421), -- Knight-Captain's Dragonhide Tunic
(16422), -- Knight-Captain's Dragonhide Leggings
(16423), -- Lieutenant Commander's Dragonhide Epaulets
(16424), -- Lieutenant Commander's Dragonhide Shroud
(16425), -- Knight-Captain's Chain Hauberk
(16426), -- Knight-Captain's Chain Leggings
(16427), -- Lieutenant Commander's Chain Pauldrons
(16428), -- Lieutenant Commander's Chain Helmet
(16429), -- Lieutenant Commander's Plate Helm
(16430), -- Knight-Captain's Plate Chestguard
(16431), -- Knight-Captain's Plate Leggings
(16432), -- Lieutenant Commander's Plate Pauldrons
(16433), -- Knight-Captain's Lamellar Breastplate
(16434), -- Lieutenant Commander's Lamellar Headguard
(16435), -- Knight-Captain's Lamellar Leggings
(16436), -- Lieutenant Commander's Lamellar Shoulders
(16485), -- Blood Guard's Silk Footwraps
(16487), -- Blood Guard's Silk Gloves
(16489), -- Champion's Silk Hood
(16490), -- Legionnaire's Silk Pants
(16491), -- Legionnaire's Silk Robes
(16492), -- Champion's Silk Shoulderpads
(16494), -- Blood Guard's Dragonhide Boots
(16496), -- Blood Guard's Dragonhide Gauntlets
(16498), -- Blood Guard's Leather Treads
(16499), -- Blood Guard's Leather Vices
(16501), -- Champion's Dragonhide Spaulders
(16502), -- Legionnaire's Dragonhide Trousers
(16503), -- Champion's Dragonhide Helm
(16504), -- Legionnaire's Dragonhide Breastplate
(16505), -- Legionnaire's Leather Hauberk
(16506), -- Champion's Leather Headguard
(16507), -- Champion's Leather Mantle
(16508), -- Legionnaire's Leather Leggings
(16509), -- Blood Guard's Plate Boots
(16510), -- Blood Guard's Plate Gloves
(16513), -- Legionnaire's Plate Armor
(16514), -- Champion's Plate Headguard
(16515), -- Legionnaire's Plate Legguards
(16516), -- Champion's Plate Pauldrons
(16518), -- Blood Guard's Mail Walkers
(16519), -- Blood Guard's Mail Grips
(16521), -- Champion's Mail Helm
(16522), -- Legionnaire's Mail Chestpiece
(16523), -- Legionnaire's Mail Leggings
(16524), -- Champion's Mail Shoulders
(16525), -- Legionnaire's Chain Breastplate
(16526), -- Champion's Chain Headguard
(16527), -- Legionnaire's Chain Leggings
(16528), -- Champion's Chain Pauldrons
(16530), -- Blood Guard's Chain Gauntlets
(16531), -- Blood Guard's Chain Boots
(16642), -- Shredder Operating Manual - Chapter 1
(16643), -- Shredder Operating Manual - Chapter 2
(16644), -- Shredder Operating Manual - Chapter 3
(16664), -- Ornate Bracers
(16792), -- Giant Club
(16892), -- Lesser Soulstone
(16893), -- Soulstone
(16895), -- Greater Soulstone
(16896), -- Major Soulstone
(16967), -- Feralas Ahi
(16968), -- Sar'theris Striker
(16969), -- Savage Coast Blue Sailfin
(16970), -- Misty Reed Mahi Mahi
(16971), -- Clamlette Surprise
(16973), -- Vial of Dire Water
(16999), -- Royal Seal of Alexis
(17012), -- Core Leather
(17019), -- Arcane Dust
(17024), -- Wild Root
(17027), -- Scented Candle
(17064), -- Shard of the Scale
(17067), -- Ancient Cornerstone Grimoire
(17068), -- Deathbringer
(17075), -- Vis'kag the Bloodletter
(17078), -- Sapphiron Drape
(17122), -- ALEX BUG TEST ITEM
(17126), -- Elegant Letter
(17142), -- Shard of the Defiler
(17162), -- Eric Test Item A
(17163), -- Eric Test Item B
(17182), -- Sulfuras, Hand of Ragnaros
(17195), -- Fake Mistletoe
(17223), -- Thunderstrike
(17224), -- Scrying Scope
(17242), -- Key to Salem's Chest
(17262), -- James' Key
(17302), -- Blue Ribboned Holiday Gift
(17305), -- Green Ribboned Holiday Gift
(17308), -- Purple Ribboned Holiday Gift
(17323), -- Mulverick's Beacon
(17324), -- Guse's Beacon
(17325), -- Jeztor's Beacon
(17333), -- Aqual Quintessence
(17342), -- JYoo Random Item Test
(17343), -- Test Random Chest
(17353), -- Stormpike Assault Orders
(17362), -- Ryson's Beacon
(17363), -- Ryson's Beacon
(17364), -- Scrying Scope
(17442), -- Frostwolf Assault Orders
(17505), -- Ichman's Beacon
(17506), -- Vipore's Beacon
(17507), -- Slidore's Beacon
(17562), -- Knight-Lieutenant's Dreadweave Boots
(17564), -- Knight-Lieutenant's Dreadweave Gloves
(17566), -- Lieutenant Commander's Headguard
(17567), -- Knight-Captain's Dreadweave Leggings
(17568), -- Knight-Captain's Dreadweave Robe
(17569), -- Lieutenant Commander's Dreadweave Mantle
(17570), -- Champion's Dreadweave Hood
(17571), -- Legionnaire's Dreadweave Leggings
(17572), -- Legionnaire's Dreadweave Robe
(17573), -- Champion's Dreadweave Shoulders
(17576), -- Blood Guard's Dreadweave Boots
(17577), -- Blood Guard's Dreadweave Gloves
(17594), -- Knight-Lieutenant's Satin Boots
(17596), -- Knight-Lieutenant's Satin Gloves
(17598), -- Lieutenant Commander's Diadem
(17599), -- Knight-Captain's Satin Leggings
(17600), -- Knight-Captain's Satin Robes
(17601), -- Lieutenant Commander's Satin Amice
(17610), -- Champion's Satin Cowl
(17611), -- Legionnaire's Satin Trousers
(17612), -- Legionnaire's Satin Vestments
(17613), -- Champion's Satin Shoulderpads
(17616), -- Blood Guard's Satin Boots
(17617), -- Blood Guard's Satin Gloves
(17696), -- Filled Cerulean Vial
(17733), -- Fist of Stone
(17758), -- Amulet of Union
(17769), -- Sagebrush Spaulders
(17782), -- Talisman of Binding Shard
(17824), -- Level 65 Test Gear Cloth - Priest
(17825), -- Level 65 Test Gear Cloth - Warlock
(17826), -- Level 65 Test Gear Plate - Warrior
(17831), -- Level 60 Test Gear Cloth - Mage/Priest/Warlock 2
(17832), -- Level 60 Test Gear Leather - Druid 2
(17833), -- Level 60 Test Gear Leather - Rogue 2
(17834), -- Level 60 Test Gear Mail - Hunter 2
(17835), -- Level 60 Test Gear Mail - Shaman 2
(17836), -- Level 60 Test Gear Plate - Paladin/Warrior 2
(17837), -- Level 55 Test Gear Cloth - Mage/Priest/Warlock 2
(17838), -- Level 55 Test Gear Leather - Druid 2
(17839), -- Level 55 Test Gear Leather - Rogue 2
(17840), -- Level 55 Test Gear Mail - Hunter 2
(17841), -- Level 55 Test Gear Mail - Shaman 2
(17842), -- Level 55 Test Gear Plate - Paladin/Warrior 2
(17843), -- Level 50 Test Gear Cloth - Mage/Priest/Warlock 2
(17844), -- Level 50 Test Gear Leather - Druid 2
(17845), -- Level 50 Test Gear Leather - Rogue 2
(17846), -- Level 50 Test Gear Mail - Hunter 2
(17847), -- Level 50 Test Gear Mail - Shaman 2
(17848), -- Level 50 Test Gear Plate - Paladin/Warrior 2
(17851), -- Level 65 Test Gear Cloth - Mage 2
(17852), -- Level 65 Test Gear Cloth - Priest 2
(17853), -- Level 65 Test Gear Cloth - Warlock 2
(17854), -- Level 65 Test Gear Leather - Druid 2
(17855), -- Level 65 Test Gear Leather - Rogue 2
(17856), -- Level 65 Test Gear Leather - Rogue 3
(17857), -- Level 65 Test Gear Mail - Hunter 2
(17858), -- Level 65 Test Gear Mail - Hunter 3
(17859), -- Level 65 Test Gear Mail - Shaman 2
(17860), -- Level 65 Test Gear Plate - Paladin 2
(17861), -- Level 65 Test Gear Plate - Warrior 2
(17862), -- Level 65 Test Gear Plate - Warrior 3
(17882), -- QAEnchant Chest +100 Health
(17886), -- QA Test Ring +285 Spell Damage
(17887), -- QAEnchant 2H Weapon +9 Damage
(17910), -- Test Enchantments LockBox (Enchanting Items) 2
(17911), -- Test Enchantments LockBox (Enchanting Items) 3
(17966), -- Onyxia Hide Backpack
(17967), -- Refined Scale of Onyxia
(17968), -- Charged Scale of Onyxia
(17982), -- Ragnaros Core
(18002), -- Forest Mushroom Cap
(18063), -- Test Epic Mount
(18105), -- PVP TEST Alliance Ear
(18106), -- PVP TEST Horde Ear
(18142), -- Severed Night Elf Head
(18151), -- Filled Amethyst Phial
(18153), -- Red Moro'gai Gem
(18154), -- Blizzard Stationery
(18161), -- 5% Test Speed Boots
(18162), -- 8% Test Speed Boots
(18163), -- 10% Test Speed Boots
(18164), -- 13% Test Speed Boots
(18165), -- 15% Test Speed Boots
(18205), -- Eskhandar's Collar
(18241), -- Black War Steed Bridle
(18242), -- Reins of the Black War Tiger
(18243), -- Black Battlestrider
(18244), -- Black War Ram
(18245), -- Horn of the Black War Wolf
(18246), -- Whistle of the Black War Raptor
(18247), -- Black War Kodo
(18248), -- Red Skeletal Warhorse
(18303), -- Nimble Buckler
(18304), -- Greenroot Mail
(18320), -- Demonheart Spaulders
(18341), -- Quel'dorei Sash
(18342), -- Quel'dorei Guard
(18361), -- The Greatest Race of Hunters
(18492), -- Treated Ancient Blade
(18538), -- Treant's Bane
(18540), -- Sealed Reliquary of Purity
(18566), -- Essence of the Firelord DEPRECATED
(18582), -- The Twin Blades of Azzinoth
(18583), -- Warglaive of Azzinoth (Right)
(18584), -- Warglaive of Azzinoth (Left)
(18608), -- Benediction
(18609), -- Anathema
(18636), -- Ruined Jumper Cables XL
(18642), -- Jaina's Autograph
(18643), -- Cairne's Hoofprint
(18651), -- Schematic: Truesilver Transformer
(18713), -- Rhok'delar, Longbow of the Ancient Keepers
(18715), -- Lok'delar, Stave of the Ancient Keepers
(18747), -- Item Properties Test
(18763), -- TEST GUN Alliance20
(18764), -- TEST GUN Raid
(18765), -- TEST GUN Horde50
(18768), -- Reins of the Swift Dawnsaber
(18799), -- Charger's Redeemed Soul
(18800), -- TEST 1H Amberseal Keeper
(18801), -- TEST 1H Benediction
(18813), -- Ring of Binding
(18881), -- TEST Ragnaros Hammer
(18882), -- TEST Level 80 Epic
(18964), -- Turtle Egg (Loggerhead)
(18968), -- Ring of Critical Testing
(18970), -- Ring of Critical Testing 2
(18971), -- Ring of Critical Testing 3
(18982), -- Ring of Critical Testing 4
(19004), -- Minor Healthstone
(19005), -- Minor Healthstone
(19006), -- Lesser Healthstone
(19007), -- Lesser Healthstone
(19008), -- Healthstone
(19009), -- Healthstone
(19010), -- Greater Healthstone
(19011), -- Greater Healthstone
(19012), -- Major Healthstone
(19013), -- Major Healthstone
(19054), -- Red Dragon Orb
(19055), -- Green Dragon Orb
(19105), -- Frost Runed Headdress
(19110), -- Cold Forged Blade
(19158), -- TEST Sulfuras, Hand of Ragnaros
(19160), -- Contest Winner's Tabard
(19184), -- 3800 Test 2h Axe 63 blue
(19185), -- 2100 Test 2h Axe 63 blue
(19186), -- 2700 Test 2h Axe 63 blue
(19187), -- 3200 Test 2h Axe 63 blue
(19188), -- 2200 Test 2h Axe 63 blue
(19189), -- 2300 Test 2h Axe 63 blue
(19190), -- 2400 Test 2h Axe 63 blue
(19191), -- 2500 Test 2h Axe 63 blue
(19192), -- 2600 Test 2h Axe 63 blue
(19193), -- 2800 Test 2h Axe 63 blue
(19194), -- 2900 Test 2h Axe 63 blue
(19195), -- 3000 Test 2h Axe 63 blue
(19196), -- 3100 Test 2h Axe 63 blue
(19197), -- 3300 Test 2h Axe 63 blue
(19198), -- 3400 Test 2h Axe 63 blue
(19199), -- 3500 Test 2h Axe 63 blue
(19200), -- 3600 Test 2h Axe 63 blue
(19201), -- 3700 Test 2h Axe 63 blue
(19213), -- Silverwing Talisman of Merit
(19226), -- Fast Test Fist
(19286), -- Fast Test Ammo
(19313), -- 1300 Test Dagger 63 blue
(19314), -- 2000 Test Dagger 63 blue
(19322), -- zzDEPRECATED Warsong Mark of Honor
(19422), -- Darkmoon Faire Fortune
(19427), -- 1500 Test sword 63 blue
(19428), -- 2900 Test sword 63 blue
(19450), -- A Jubling's Tiny Home
(19455), -- 3500 Test 2h Axe 70 purple
(19456), -- 2900 Test sword 80 purple
(19457), -- 1500 Test sword 80 purple
(19489), -- 3300 Test Crossbow 63 blue
(19490), -- 2800 Test Bow 63 Blue
(19502), -- 2200 Test sword 63 blue
(19503), -- 2200 Test sword 80 purple
(19504), -- 2200 Test sword 70 purple
(19622), -- 1800 Test Dagger 63 blue
(19642), -- iCoke Prize Voucher
(19662), -- 3500 Test 2h Axe 80 purple
(19696), -- Harvest Bread
(19725), -- Arathi Resource Crate
(19742), -- Earthborn Kilt TEST
(19743), -- Cloaked Hood TEST
(19775), -- Sealed Azure Bag
(19803), -- Brownell's Blue Striped Racer
(19805), -- Keefer's Angelfish
(19806), -- Dezian Queenfish
(19807), -- Speckled Tastyfish
(19808), -- Rockhide Strongfish
(19809), -- 2500 Test 2h Axe 60 blue
(19810), -- 1000 Test dagger 60 blue
(19811), -- 2500 Test 2h Axe 60 blue (bear)
(19837), -- Test Ranged Slot
(19875), -- Bloodstained Coif
(19879), -- Alex's Test Beatdown Staff
(19880), -- Gurubashi Head Collection
(19882), -- The Hexxer's Head
(19924), -- Monster - Dagger, Fang Hook Curve Dark
(19932), -- UNUSED Empowered Mojo Bundle
(19951), -- Gri'lek's Charm of Might
(19952), -- Gri'lek's Charm of Valor
(19953), -- Renataki's Charm of Beasts
(19954), -- Renataki's Charm of Trickery
(19955), -- Wushoolay's Charm of Nature
(19956), -- Wushoolay's Charm of Spirits
(19957), -- Hazza'rah's Charm of Destruction
(19958), -- Hazza'rah's Charm of Healing
(19959), -- Hazza'rah's Charm of Magic
(19960), -- Crystalized Honey
(19971), -- High Test Eternium Fishing Line
(19986), -- Pirate's Eye Patch
(20003), -- Devilsaur Claws
(20005), -- Devilsaur Claws
(20018), -- Angerclaw Grizzly Hide
(20020), -- Bundle of Goods
(20021), -- Gold Pirate Earring
(20030), -- Pet Rock
(20065), -- Arathi Basin Mageweave Bandage
(20067), -- Arathi Basin Silk Bandage
(20086), -- Broken Dusksteel Throwing Knife
(20142), -- 90 Epic Warrior Waistband
(20256), -- Warsong Gulch Ribbon of Sacrifice
(20329), -- 90 Epic Frost Leggings
(20364), -- Test Ammo Lockbox
(20368), -- Bland Bow of Steadiness
(20370), -- Test Staff 90 epic
(20372), -- Test Staff 77 epic
(20381), -- Dreamscale
(20393), -- Treat Bag
(20416), -- Crest of Beckoning: Fire
(20418), -- Crest of Beckoning: Thunder
(20419), -- Crest of Beckoning: Earth
(20420), -- Crest of Beckoning: Water
(20432), -- Signet of Beckoning: Fire
(20433), -- Signet of Beckoning: Thunder
(20435), -- Signet of Beckoning: Stone
(20436), -- Signet of Beckoning: Water
(20445), -- Test Defense Ring +120
(20446), -- Test Defense Ring +80
(20447), -- Scepter of Beckoning: Fire
(20448), -- Scepter of Beckoning: Thunder
(20449), -- Scepter of Beckoning: Stone
(20450), -- Scepter of Beckoning: Water
(20454), -- Hive'Zora Rubbing
(20455), -- Hive'Ashi Rubbing
(20456), -- Hive'Regal Rubbing
(20487), -- Lok'delar, Stave of the Ancient Keepers DEP
(20488), -- Rhok'delar, Longbow of the Ancient Keepers DEP
(20498), -- Silithid Chitin
(20500), -- Light Silithid Carapace
(20501), -- Heavy Silithid Carapace
(20502), -- Ironbark Shield
(20522), -- Feral Staff
(20524), -- Shadowhide Leggings
(20560), -- Alterac Valley Mark of Honor
(20591), -- Sturdy Male Dwarf Mask
(20596), -- Sturdy Male Tauren Mask
(20696), -- Crystal Spiked Maul
(20698), -- Elemental Attuned Blade
(20706), -- Cenarion Reservist's Pants
(20708), -- Tightly Sealed Trunk
(20709), -- Rumsey Rum Light
(20720), -- Dark Whisper Blade
(20721), -- Band of the Cultist
(20722), -- Crystal Slugthrower
(20819), -- Cut Malachite
(20822), -- Cut Tigerseye
(20825), -- Cut Shadowgem
(20829), -- Cut Moonstone
(20880), -- Golden Token
(20887), -- Qiraji Engraved Jewel
(20902), -- Recruit's Pants
(20903), -- Recruit's Boots
(20904), -- Recruit's Tunic
(20913), -- Medium Guard
(20952), -- Cut Agate
(20953), -- Cut Jade
(20957), -- Cut Citrine
(20962), -- Cut Aquamarine
(20965), -- Cut Ruby
(20977), -- Recruit's Shortsword
(20979), -- Warder's Axe
(20981), -- Neophyte's Mace
(20984), -- Recruit's Shield
(21043), -- Mysterious Envelope
(21044), -- Reindeer Reins
(21071), -- Raw Sagefish
(21101), -- Staff of Spell Penetration - Fire (TEST)
(21102), -- Staff of Spell Penetration - Frost (TEST)
(21106), -- Draconic for Dummies
(21107), -- Draconic for Dummies
(21109), -- Draconic for Dummies
(21111), -- Draconic For Dummies: Volume II
(21113), -- Watertight Trunk
(21114), -- Rumsey Rum Dark
(21124), -- Ahn'Qiraj Wand [PH]
(21125), -- Ahn'Qiraj Staff [PH]
(21127), -- Ahn'Qiraj Mace [PH]
(21131), -- Followup Combat Assignment
(21140), -- Auction Stationery
(21141), -- Destroyed Red Scepter Shard
(21150), -- Iron Bound Trunk
(21152), -- The Nightmare's Corruption
(21153), -- Raw Greater Sagefish
(21158), -- Hive'Zora Scout Report
(21159), -- Hive'Zora Scout Orders
(21160), -- Hive'Regal Scout Report
(21161), -- Hive'Ashi Scout Report
(21162), -- Bloated Oily Blackmouth
(21164), -- Bloated Rockscale Cod
(21168), -- Baby Shark
(21171), -- Filled Festive Mug
(21175), -- The Scepter of the Shifting Sands
(21212), -- Fresh Holly
(21228), -- Mithril Bound Trunk
(21238), -- Winter Veil Cookie UNUSED
(21243), -- Bloated Mightfish
(21274), -- Test Stackable Items
(21276), -- Blessed Qiraji Naturalist Staff UNUSED
(21281), -- Grimoire of Shadow Bolt X
(21282), -- Grimoire of Immolate VIII
(21283), -- Grimoire of Corruption VII
(21293), -- Tablet of Grace of Air Totem III
(21302), -- Handbook of Deadly Poison V
(21339), -- Doomcaller's Handwraps [PH]
(21419), -- AHNQIRAJ TEST ITEM A CLOTH LEGS
(21420), -- AHNQIRAJ TEST ITEM B LEATHER CHEST
(21421), -- AHNQIRAJ TEST ITEM C MAIL CHEST
(21422), -- AHNQIRAJ TEST ITEM D PLATE CHEST
(21423), -- AHNQIRAJ TEST ITEM B LEATHER PANTS
(21424), -- AHNQIRAJ TEST ITEM B LEATHER SHOULDER
(21425), -- AHNQIRAJ TEST ITEM B LEATHER BELT
(21426), -- AHNQIRAJ TEST ITEM B LEATHER HELM
(21427), -- AHNQIRAJ TEST ITEM B LEATHER BOOTS
(21428), -- AHNQIRAJ TEST ITEM B LEATHER GAUNTLETS
(21429), -- AHNQIRAJ TEST ITEM A CLOTH BELT
(21430), -- AHNQIRAJ TEST ITEM A CLOTH ROBE
(21431), -- AHNQIRAJ TEST ITEM A CLOTH FEET
(21432), -- AHNQIRAJ TEST ITEM B LEATHER BRACER
(21433), -- AHNQIRAJ TEST ITEM A CLOTH BRACER
(21434), -- AHNQIRAJ TEST ITEM A CLOTH HELM
(21435), -- AHNQIRAJ TEST ITEM A CLOTH SHOULDERS
(21437), -- AHNQIRAJ TEST ITEM A CLOTH GLOVES
(21439), -- AHNQIRAJ TEST ITEM D PLATE HELM
(21440), -- AHNQIRAJ TEST ITEM D PLATE LEGS
(21441), -- AHNQIRAJ TEST ITEM D PLATE BELT
(21442), -- AHNQIRAJ TEST ITEM D PLATE BOOTS
(21443), -- AHNQIRAJ TEST ITEM D PLATE SHOULDERS
(21444), -- AHNQIRAJ TEST ITEM D PLATE GLOVES
(21445), -- AHNQIRAJ TEST ITEM D PLATE BRACER
(21446), -- AHNQIRAJ TEST ITEM C MAIL HELM
(21447), -- AHNQIRAJ TEST ITEM C MAIL SHOULDERS
(21448), -- AHNQIRAJ TEST ITEM C MAIL LEGS
(21449), -- AHNQIRAJ TEST ITEM C MAIL BOOTS
(21450), -- AHNQIRAJ TEST ITEM C MAIL GLOVES
(21451), -- AHNQIRAJ TEST ITEM C MAIL BELT
(21516), -- Dagger of Spell Penetration - Fire 150 Resist (TEST)
(21518), -- Dagger of Spell Penetration - Frost 150 Resist (TEST)
(21519), -- Mistletoe
(21536), -- Elune Stone
(21560), -- Small Purple Rocket
(21577), -- White Rocket Cluster
(21578), -- Yellow Rocket Cluster
(21584), -- Bracers of Eternal Reckoning
(21587), -- Wristguards of Castigation
(21588), -- Wristguards of Elemental Fury
(21591), -- Large Purple Rocket
(21594), -- Bracers of the Fallen Son
(21612), -- Wormscale Stompers
(21613), -- Wormhide Boots
(21614), -- Wormhide Protector
(21628), -- Test AQ Resource - Copper
(21629), -- Test AQ Resource - Iron
(21630), -- Test AQ Resource - Thorium
(21631), -- Test AQ Resource - Light Leather
(21632), -- Test AQ Resource - Medium Leather
(21633), -- Test AQ Resource - Thick Leather
(21634), -- Test AQ Resource - Linen Bandage
(21636), -- Test AQ Resource - Silk Bandage
(21637), -- Test AQ Resource - Runecloth Bandage
(21638), -- Test AQ Resource - Spotted Yellowtail
(21641), -- Test AQ Resource - Rainbow Fin Albacore
(21642), -- Test AQ Resource - Roast Raptor
(21643), -- Test AQ Resource - Arthas' Tear
(21644), -- Test AQ Resource - Stranglekelp
(21646), -- Test AQ Resource - Purple Lotus
(21649), -- Test AQ Resource - Tin
(21653), -- Test AQ Resource - Mithril
(21655), -- Test AQ Resource - Heavy Leather
(21656), -- Test AQ Resource - Rugged Leather
(21657), -- Test AQ Resource - Wool Bandages
(21658), -- Test AQ Resource - Mageweave Bandages
(21659), -- Test AQ Resource - Lean Wolf Steak
(21660), -- Test AQ Resource - Baked Salmon
(21661), -- Test AQ Resource - Firebloom
(21662), -- Test AQ Resource - Peacebloom
(21772), -- Cut Sapphire
(21773), -- Cut Opal
(21782), -- 2000 Test sword 63 blue
(21785), -- Cut Emerald
(21786), -- Cut Azerothian Diamond
(21815), -- Love Token
(21816), -- Heart Candy
(21817), -- Heart Candy
(21818), -- Heart Candy
(21819), -- Heart Candy
(21820), -- Heart Candy
(21821), -- Heart Candy
(21822), -- Heart Candy
(21823), -- Heart Candy
(21831), -- Wrappered Gift
(21857), -- Test Herb Bag
(21878), -- ZZOLD Spellthread
(21890), -- Gloves of the Fallen Prophet
(21975), -- Pledge of Adoration: Stormwind
(21979), -- Gift of Adoration: Darnassus
(21980), -- Gift of Adoration: Ironforge
(21981), -- Gift of Adoration: Stormwind
(21992), -- Manual: Netherweave Bandage
(22018), -- Conjured Glacier Water
(22019), -- Conjured Croissant
(22020), -- QAEnchant Weapon +15 Agility
(22042), -- QAEnchant Cloak -2% Threat
(22044), -- Mana Emerald
(22045), -- Test QARaid Uber Ammo Lockbox
(22058), -- Valentine's Day Stationery
(22059), -- Valentine's Day Card
(22103), -- Master Healthstone
(22104), -- Master Healthstone
(22105), -- Master Healthstone
(22116), -- Master Soulstone
(22128), -- Master Firestone (DEPRECATED)
(22140), -- Sentinel's Card
(22141), -- Ironforge Guard's Card
(22142), -- Grunt's Card
(22143), -- Stormwind Guard's Card
(22144), -- Bluffwatcher's Card
(22145), -- Guardian's Moldy Card
(22154), -- Pledge of Adoration: Ironforge
(22155), -- Pledge of Adoration: Darnassus
(22156), -- Pledge of Adoration: Orgrimmar
(22157), -- Pledge of Adoration: Undercity
(22158), -- Pledge of Adoration: Thunder Bluff
(22159), -- Pledge of Friendship: Darnassus
(22160), -- Pledge of Friendship: Ironforge
(22161), -- Pledge of Friendship: Orgrimmar
(22162), -- Pledge of Friendship: Thunder Bluff
(22163), -- Pledge of Friendship: Undercity
(22164), -- Gift of Adoration: Orgrimmar
(22165), -- Gift of Adoration: Thunder Bluff
(22166), -- Gift of Adoration: Undercity
(22167), -- Gift of Friendship: Darnassus
(22168), -- Gift of Friendship: Ironforge
(22169), -- Gift of Friendship: Orgrimmar
(22170), -- Gift of Friendship: Stormwind
(22171), -- Gift of Friendship: Thunder Bluff
(22172), -- Gift of Friendship: Undercity
(22178), -- Pledge of Friendship: Stormwind
(22179), -- Grimoire of Firebolt (Rank 8)
(22180), -- Grimoire of Blood Pact (Rank 6)
(22181), -- Grimoire of Fire Shield (Rank 6)
(22182), -- Grimoire of Torment (Rank 7)
(22183), -- Grimoire of Suffering (Rank 5)
(22184), -- Grimoire of Consume Shadows (Rank 7)
(22185), -- Grimoire of Sacrifice (Rank 7)
(22186), -- Grimoire of Lash of Pain (Rank 7)
(22187), -- Grimoire of Soothing Kiss (Rank 5)
(22188), -- Grimoire of Devour Magic (Rank 5)
(22189), -- Grimoire of Devour Magic (Rank 6)
(22190), -- Grimoire of Tainted Blood (Rank 5)
(22202), -- Small Obsidian Shard
(22230), -- Frightmaw Hide
(22260), -- Friendship Bracelet
(22262), -- Alliance Gift Collection
(22263), -- Horde Gift Collection
(22273), -- Moonshadow Hood
(22283), -- Sack of Homemade Bread
(22284), -- Bundle of Cards
(22285), -- Stormwind Pledge Collection
(22286), -- Ironforge Pledge Collection
(22287), -- Parcel of Cards
(22288), -- Case of Homebrew
(22289), -- Stack of Cards
(22290), -- Darnassus Pledge Collection
(22291), -- Box of Woodcrafts
(22292), -- Box of Fresh Pies
(22293), -- Package of Cards
(22294), -- Orgrimmar Pledge Collection
(22295), -- Satchel of Cards
(22296), -- Basket of Flowers
(22297), -- Thunder Bluff Pledge Collection
(22298), -- Book of Romantic Poems
(22299), -- Sheaf of Cards
(22300), -- Undercity Pledge Collection
(22316), -- Test Relic
(22349), -- Desecrated Breastplate
(22350), -- Desecrated Tunic
(22351), -- Desecrated Robe
(22352), -- Desecrated Legplates
(22353), -- Desecrated Helmet
(22354), -- Desecrated Pauldrons
(22355), -- Desecrated Bracers
(22356), -- Desecrated Waistguard
(22357), -- Desecrated Gauntlets
(22358), -- Desecrated Sabatons
(22359), -- Desecrated Legguards
(22360), -- Desecrated Headpiece
(22361), -- Desecrated Spaulders
(22362), -- Desecrated Wristguards
(22363), -- Desecrated Girdle
(22364), -- Desecrated Handguards
(22365), -- Desecrated Boots
(22366), -- Desecrated Leggings
(22367), -- Desecrated Circlet
(22368), -- Desecrated Shoulderpads
(22369), -- Desecrated Bindings
(22370), -- Desecrated Belt
(22371), -- Desecrated Gloves
(22372), -- Desecrated Sandals
(22373), -- Wartorn Leather Scrap
(22374), -- Wartorn Chain Scrap
(22375), -- Wartorn Plate Scrap
(22376), -- Wartorn Cloth Scrap
(22386), -- Head of Instructor Razuvious DEP
(22387), -- Heart of Anub'Rekhan
(22485), -- [UNUSED] Scourge Invasion Focus Object
(22486), -- [UNUSED] Scourge Invasion Boss Summoner
(22584), -- QAEnchant Cloak +3 Agility
(22596), -- Monster - Sword2H, Horde A02
(22646), -- Master Spellstone (DEPRECATED)
(22691), -- Corrupted Ashbringer
(22709), -- Monster - Sword2H, Corrupted Ashbringer
(22710), -- Bloodthistle
(22726), -- Splinter of Atiesh
(22733), -- Staff Head of Atiesh
(22736), -- Andonisus, Reaper of Souls
(22754), -- Eternal Quintessence
(22782), -- Sin'dorei Cloak of Warding
(22788), -- Flame Cap
(22795), -- Fel Blossom
(22797), -- Nightmare Seed
(22798), -- Might of Menethil
(22799), -- Soulseeker
(22800), -- Brimstone Staff
(22801), -- Spire of Twilight
(22802), -- Kingsfall
(22803), -- Midnight Haze
(22804), -- Maexxna's Fang
(22805), -- Naxxramas Sword 1H 1 [PH]
(22806), -- Widow's Remorse
(22807), -- Wraith Blade
(22808), -- The Castigator
(22809), -- Maul of the Redeemed Crusader
(22810), -- Toxin Injector
(22811), -- Soulstring
(22812), -- Nerubian Slavemaker
(22813), -- Claymore of Unholy Might
(22814), -- Naxxramas Sword 2H 2 [PH]
(22815), -- Severance
(22816), -- Hatchet of Sundered Bone
(22817), -- Naxxramas Polearm [PH]
(22818), -- The Plague Bearer
(22819), -- Shield of Condemnation
(22820), -- Wand of Fates
(22821), -- Doomfinger
(22822), -- iCoke Prize Voucher
(22891), -- Grimoire of Shadow Ward IV
(22895), -- Conjured Cinnamon Roll
(22896), -- Healing Crystal
(22899), -- Etched Crystal
(22933), -- [UNUSED] Abom Stoone
(22935), -- Touch of Frost
(22936), -- Wristguards of Vengeance
(22937), -- Gem of Nerubis
(22938), -- Cryptfiend Silk Cloak
(22939), -- Band of Unanswered Prayers
(22940), -- Icebane Pauldrons
(22941), -- Polar Shoulder Pads
(22942), -- The Widow's Embrace
(22943), -- Malice Stone Pendant
(22947), -- Pendant of Forgotten Names
(22954), -- Kiss of the Spider
(22960), -- Cloak of Suturing
(22961), -- Band of Reanimation
(22967), -- Icy Scale Spaulders
(22968), -- Glacial Mantle
(22972), -- A Careworn Note
(22981), -- Gluth's Missing Collar
(22983), -- Rime Covered Mantle
(22988), -- The End of Dreams
(22994), -- Digested Hand of Power
(23000), -- Plated Abomination Ribcage
(23001), -- Eye of Diminution
(23003), -- Blood Elf Plans
(23004), -- Idol of Longevity
(23005), -- Totem of Flowing Water
(23006), -- Libram of Light
(23008), -- Sealed Research Report
(23009), -- Wand of the Whispering Dead
(23010), -- Sealed Research Report
(23011), -- Sealed Research Report
(23012), -- Sealed Research Report
(23013), -- Sealed Research Report
(23014), -- Iblis, Blade of the Fallen Seraph
(23016), -- Sealed Research Report
(23017), -- Veil of Eclipse
(23018), -- Signet of the Fallen Defender
(23019), -- Icebane Helmet
(23020), -- Polar Helmet
(23021), -- The Soul Harvester's Bindings
(23023), -- Sadist's Collar
(23024), -- Prepared Field Duty Papers
(23025), -- Seal of the Damned
(23027), -- Warmth of Forgiveness
(23028), -- Hailstone Band
(23029), -- Noth's Frigid Heart
(23030), -- Cloak of the Scourge
(23031), -- Band of the Inevitable
(23032), -- Glacial Headdress
(23033), -- Icy Scale Coif
(23034), -- Nax PH Crit Plate Shoulders
(23035), -- Preceptor's Hat
(23036), -- Necklace of Necropsy
(23037), -- Ring of Spiritual Fervor
(23038), -- Band of Unnatural Forces
(23039), -- The Eye of Nerub
(23040), -- Glyph of Deflection
(23041), -- Slayer's Crest
(23042), -- Loatheb's Reflection
(23043), -- The Face of Death
(23044), -- Harbinger of Doom
(23045), -- Shroud of Dominion
(23046), -- The Restrained Essence of Sapphiron
(23047), -- Eye of the Dead
(23048), -- Sapphiron's Right Eye
(23049), -- Sapphiron's Left Eye
(23050), -- Cloak of the Necropolis
(23051), -- Glaive of the Defender
(23053), -- Stormrage's Talisman of Seething
(23054), -- Gressil, Dawn of Ruin
(23055), -- Word of Thawing
(23056), -- Hammer of the Twisting Nether
(23057), -- Gem of Trapped Innocents
(23058), -- Life Channeling Necklace
(23068), -- Legplates of Carnage
(23069), -- Necro-Knight's Garb
(23070), -- Leggings of Polarity
(23071), -- Leggings of Apocalypse
(23072), -- Fists of the Unrelenting
(23073), -- Boots of Displacement
(23075), -- Death's Bargain
(23076), -- Brilliant Citrine
(23086), -- [UNUSED] Letter Cookie
(23130), -- Design: Teardrop Blood Garnet
(23131), -- Design: Bold Blood Garnet
(23135), -- Design: Inscribed Flame Spessarite
(23137), -- Design: Glinting Flame Spessarite
(23140), -- Design: Radiant Deep Peridot
(23141), -- Design: Jagged Deep Peridot
(23144), -- Design: Glowing Shadow Draenite
(23147), -- Design: Sovereign Shadow Draenite
(23148), -- Design: Brilliant Golden Draenite
(23151), -- Design: Rigid Golden Draenite
(23152), -- Design: Solid Azure Moonstone
(23153), -- Design: Sparkling Azure Moonstone
(23157), -- Thick Citrine
(23162), -- Foror's Crate of Endless Resist Gear Storage
(23193), -- Naxxramas Deathcharger Reins
(23194), -- Lesser Mark of the Dawn
(23195), -- Mark of the Dawn
(23196), -- Greater Mark of the Dawn
(23214), -- Plump Helboar Carcass
(23219), -- Girdle of the Mentor
(23220), -- Crystal Webbed Robe
(23221), -- Misplaced Servo Arm
(23226), -- Ghoul Skin Tunic
(23227), -- iCoke Gift Box Voucher
(23229), -- Sword of Sockety Goodness
(23233), -- Red Bryanite of Strength stuff
(23234), -- Blue Bryanite of Agility
(23235), -- Yellow Bryanite of Stamina
(23237), -- Ring of the Eternal Flame
(23238), -- Stygian Buckler
(23242), -- Claw of the Frost Wyrm
(23248), -- Purified Helboar Meat
(23271), -- QATest Darkmoon Faire Tickets
(23330), -- Wilted Petal
(23340), -- Arelion's Journal Page 2
(23341), -- Arelion's Journal Page 3
(23342), -- Arelion's Journal Page 4
(23350), -- Battleworn Pants
(23352), -- Potent Voidwalker Essence
(23355), -- Toxic Helboar Meat
(23360), -- Head of Instructor Razuvious
(23362), -- Hammer of the Sun
(23363), -- Titanic Breastplate
(23364), -- zzDEPRECATEDHeart of the Sky
(23365), -- Steel Rimmed Buckler
(23366), -- zzDEPRECATEDPerfect Diamond
(23368), -- Soft Leather Boots
(23378), -- Undamaged Warp Hound Corpse
(23418), -- Test Sapper Charge
(23420), -- Engraved Axe
(23421), -- Engraved Sword
(23422), -- Engraved Dagger
(23432), -- Engraved Greatsword
(23433), -- Blood Robes
(23434), -- Robes of the Shard
(23457), -- High Warlord's Destroyer
(23458), -- High Warlord's Spellblade
(23459), -- High Warlord's Battle Mace
(23461), -- High Warlord's Quickblade
(23462), -- High Warlord's Tome of Destruction
(23471), -- Rugged Trapper's Pants
(23486), -- Caged Female Kaliri Hatchling
(23545), -- Power of the Scourge
(23547), -- Resilience of the Scourge
(23548), -- Might of the Scourge
(23549), -- Fortitude of the Scourge
(23552), -- Filled Azure Phial
(23560), -- Arena Team Charter (2v2)
(23561), -- Arena Team Charter (3v3)
(23562), -- Arena Team Charter (5v5)
(23567), -- [PH] Silithus PvP Dust [DEP]
(23577), -- The Hungering Cold
(23578), -- Diet McWeaksauce
(23579), -- The McWeaksauce Classic
(23584), -- Loch Modan Lager
(23586), -- Aerie Peak Pale Ale
(23656), -- Promotion Test Item
(23663), -- Girdle of Elemental Fury
(23664), -- Pauldrons of Elemental Fury
(23665), -- Leggings of Elemental Fury
(23666), -- Belt of the Grand Crusader
(23667), -- Spaulders of the Grand Crusader
(23668), -- Leggings of the Grand Crusader
(23670), -- Thalanaar Moonwell Water
(23683), -- Crystal Flake Throat Lozenge
(23684), -- Crystal Infused Bandage
(23686), -- Lacy Handkerchief
(23705), -- Tabard of Flame
(23709), -- Tabard of Frost
(23711), -- Grimoire of Intercept (Rank 1)
(23714), -- Perpetual Purple Firework
(23716), -- Carved Ogre Idol
(23726), -- Fel Ember
(23730), -- Grimoire of Intercept (Rank 2)
(23731), -- Grimoire of Intercept (Rank 3)
(23734), -- Grimoire of Cleave (Rank 1)
(23745), -- Grimoire of Cleave (Rank 2)
(23750), -- Filled Bota Bag
(23754), -- Bristlehide Clefthoof Hide
(23755), -- Grimoire of Cleave (Rank 3)
(23773), -- Adamantite Shells
(23840), -- Remote Mail Terminal
(23846), -- Nolkai's Box
(23854), -- Shadoweave Cloth
(23855), -- Spellfire Cloth
(23858), -- Singed Page
(23866), -- Singed Page
(23867), -- Singed Page
(23868), -- Singed Page
(23878), -- Impact Site Crystal Sample
(23879), -- Altered Crystal Sample
(23880), -- Axxarien Crystal Sample
(23882), -- Schematic: Critter Enlarger
(23885), -- Schematic: Remote Mail Terminal
(23952), -- Damaged Ravager Claw
(23980), -- Chipped Ravager Fang
(24071), -- Bland Dagger
(24100), -- Warder's Dagger
(24137), -- PH Plate Ramparts Reward
(24140), -- Blackened Urn
(24156), -- Filled Shimmering Vessel
(24188), -- Tin Powder
(24190), -- Iron Powder
(24226), -- Blood Knight Insignia
(24227), -- Soft Leather Belt
(24234), -- Mithril Powder
(24235), -- Thorium Powder
(24242), -- Fel Iron Powder
(24243), -- Adamantite Powder
(24265), -- Old Spellstrike Hood
(24283), -- An Antique Gun
(24288), -- Rune Thread
(24315), -- Pattern: Heavy Netherweave Net
(24317), -- Bloodmyst Water Sample
(24358), -- QATest +1000 Spell Dmg Ring
(24412), -- Warden's Arrow
(24448), -- Battle Tested Blade
(24494), -- Tears of the Goddess
(24506), -- Elemental Sliver
(24509), -- Primordial Element
(24526), -- 130 Epic Warrior Bracelets
(24538), -- Fire Bomb
(24550), -- Gladiator's Greatsword
(24557), -- Gladiator's War Staff
(24561), -- 130 Test Caster Belt
(24567), -- 130 Test Caster Cloak
(24573), -- Elder Kuruti's Response
(25145), -- Wisdom Blade
(25159), -- Thunderstrike Falchion
(25173), -- Master's Bo Staff
(25285), -- Bloodwood Wand
(25407), -- The Movable Object
(25469), -- Grimoire of Avoidance
(25573), -- QR 9863 Warrior Chest
(25574), -- Greenkeeper's Pantaloons
(25575), -- Thunderbringer's Guard
(25576), -- Smuggler's Mitts
(25580), -- QR 9867 Warrior Legs
(25581), -- QR 9867 Hunter Gloves
(25582), -- QR 9867 Druid Moonkin Belt
(25596), -- Peep's Whistle
(25627), -- QR 9922 Shield
(25635), -- Eye of Veil Skith
(25641), -- Broken Fitz's Throwing Axe
(25667), -- ObsoleteIdol of the Beast
(25677), -- Terokkar Chokeberry
(25699), -- Crystal Infused Leather
(25700), -- Fel Scales
(25747), -- (Deprecated)Mana Bomb Schematics - Page 1
(25748), -- (Deprecated)Mana Bomb Schematics - Page 2
(25749), -- (Deprecated)Mana Bomb Schematics - Page 3
(25750), -- (Deprecated)Mana Bomb Schematics - Page 4
(25754), -- Mana Bomb Code Sheet 1
(25755), -- Mana Bomb Code Sheet 2
(25756), -- Mana Bomb Code Sheet 3
(25757), -- Mana Bomb Code Sheet 4
(25813), -- Small Mushroom
(25814), -- Deathskitter's Fang
(25850), -- Tuurem Artifact
(25877), -- Master's Throwing Dagger
(25900), -- Grimoire of Demonic Frenzy
(26015), -- Anchorite Neophyte's Cuffs
(26029), -- Watchman's Bracers
(26041), -- Vigilant Vambraces
(26045), -- Halaa Battle Token
(26128), -- 68 TEST Green Cloth Belt
(26129), -- 68 TEST Green Cloth Boot
(26130), -- 68 TEST Green Cloth Chest
(26131), -- 68 TEST Green Cloth Hand
(26132), -- 68 TEST Green Cloth Head
(26133), -- 68 TEST Green Cloth Legs
(26134), -- 68 TEST Green Cloth Shoulder
(26135), -- 68 TEST Green Cloth Wrist
(26173), -- 59 TEST Green Rogue Legs
(26174), -- 59 TEST Green Rogue Shoulder
(26175), -- 59 TEST Green Rogue Wrist
(26180), -- 60 TEST Green Rogue Head
(26235), -- 67 TEST Green Rogue Hand
(26324), -- 64 TEST Green Hunter Head
(26368), -- 70 TEST Green Hunter Belt
(26372), -- 70 TEST Green Hunter Head
(26464), -- 68 TEST Green Warrior Belt
(26465), -- 68 TEST Green Warrior Boot
(26513), -- 68 TEST Green Cloth Cloak
(26527), -- 68 TEST Green Cloth Ring
(26541), -- 68 TEST Green Cloth Necklace
(26548), -- 61 TEST Green Shield
(26569), -- 68 TEST Green Off Hand
(26655), -- 70 TEST Green Staff
(26738), -- 69 TEST Green Crossbow
(26765), -- 68 TEST Green Wand
(26779), -- 68 TEST Green Spell Dagger
(26792), -- 67 TEST Green Healer Mace
(26843), -- 62 TEST Green Druid Wrist
(27002), -- Spojka Black Shirt
(27007), -- Spojka Rich Purple Shirt
(27196), -- 65 TEST Green Druid/Warrior Cloak
(27218), -- 59 TEST Green Druid/Warrior Necklace
(27317), -- Elemental Sapta
(27388), -- Mr. Pinchy
(27419), -- Forge Camp: Spite Plans
(27422), -- Barbed Gill Trout
(27437), -- Icefin Bluefish
(27441), -- Felblood Snapper
(27443), -- Steam Pump Debris
(27446), -- Mr. Pinchy's Gift
(27481), -- Heavy Supply Crate
(27511), -- Inscribed Scrollcase
(27513), -- Curious Crate
(27590), -- Level 63 Test Gear Green - Mail - Hunter 2
(27718), -- Aldor Defender's Legplates
(27719), -- Aldor Leggings of Puissance
(27720), -- Robes of the Aldor
(27774), -- zzOLDMighty Blood Garnet
(27811), -- zzOLDMighty Blood Garnet
(27863), -- Extended Cost Bryanite
(27864), -- Brian's Bryanite of Extended Cost Copying
(27965), -- TEST 130 Epic Paladin DPS Chest
(28023), -- Monster - Throwing Axe (Poison)
(28039), -- Crude Explosives
(28043), -- Demon Stalker Pendant
(28044), -- Band of the Demon Stalker
(28045), -- Cloak of the Demon Stalker
(28047), -- Nekrogg's Key
(28068), -- Grimoire of Suffering (Rank 6)
(28071), -- Grimoire of Anguish (Rank 1)
(28072), -- Grimoire of Anguish (Rank 2)
(28073), -- Grimoire of Anguish (Rank 3)
(28099), -- Drillmaster Zurok's Orders
(28110), -- Fat Gnome and Little Elf
(28112), -- Underspore Pod
(28117), -- zzOLDBold Ornate Ruby
(28122), -- zzOLDEnscribed Ornate Topaz
(28131), -- Reaver Buster Launcher
(28145), -- Tranquillien Wraps
(28244), -- Pendant of Triumph
(28245), -- Pendant of Dominance
(28291), -- Design: Smooth Golden Draenite
(28293), -- High Warlord's Claymore
(28294), -- Gladiator's Heavy Crossbow
(28295), -- Gladiator's Slicer
(28297), -- Gladiator's Spellblade
(28298), -- Gladiator's Decapitator
(28299), -- Gladiator's Bonegrinder
(28300), -- Gladiator's Painsaw
(28302), -- Gladiator's Bonecracker
(28305), -- Gladiator's Pummeler
(28307), -- Gladiator's Quickblade
(28308), -- Gladiator's Cleaver
(28309), -- Gladiator's Hacker
(28310), -- Gladiator's Shiv
(28312), -- Gladiator's Shanker
(28313), -- Gladiator's Right Ripper
(28314), -- Gladiator's Left Ripper
(28319), -- Gladiator's War Edge
(28320), -- Gladiator's Touch of Defeat
(28346), -- Gladiator's Endgame
(28355), -- Gladiator's Idol of Tenacity
(28356), -- Gladiator's Libram of Justice
(28357), -- Gladiator's Totem of the Third Wind
(28358), -- Gladiator's Shield Wall
(28381), -- General's Plate Bracers
(28383), -- General's Plate Greaves
(28385), -- General's Plate Belt
(28388), -- TCHILTON TEST RUBY
(28389), -- TCHILTON TEST DAWNSTONE
(28402), -- General's Dreadweave Stalkers
(28404), -- General's Dreadweave Belt
(28405), -- General's Dreadweave Cuffs
(28408), -- Broken Silver Star
(28409), -- General's Silk Belt
(28410), -- General's Silk Footguards
(28411), -- General's Silk Cuffs
(28422), -- General's Leather Boots
(28423), -- General's Leather Belt
(28424), -- General's Leather Bracers
(28443), -- General's Dragonhide Belt
(28444), -- General's Dragonhide Boots
(28445), -- General's Dragonhide Bracers
(28446), -- General's Wyrmhide Belt
(28447), -- General's Wyrmhide Boots
(28448), -- General's Wyrmhide Bracers
(28449), -- General's Chain Sabatons
(28450), -- General's Chain Girdle
(28451), -- General's Chain Bracers
(28476), -- Gladiator's Maul
(28482), -- Great Elite Elekk
(28489), -- Monster - Work Wrench, Ethereal (Red Glow)
(28500), -- Fossil Oil
(28596), -- Design: Bright Blood Garnet
(28605), -- General's Linked Bracers
(28613), -- Grand Marshal's Chain Armor
(28614), -- Grand Marshal's Chain Gauntlets
(28615), -- Grand Marshal's Chain Helm
(28616), -- Grand Marshal's Chain Leggings
(28617), -- Grand Marshal's Chain Spaulders
(28618), -- Grand Marshal's Dragonhide Gloves
(28619), -- Grand Marshal's Dragonhide Helm
(28620), -- Grand Marshal's Dragonhide Legguards
(28622), -- Grand Marshal's Dragonhide Spaulders
(28623), -- Grand Marshal's Dragonhide Tunic
(28624), -- Grand Marshal's Dreadweave Gloves
(28625), -- Grand Marshal's Dreadweave Hood
(28626), -- Grand Marshal's Dreadweave Leggings
(28627), -- Grand Marshal's Dreadweave Mantle
(28628), -- Grand Marshal's Dreadweave Robe
(28629), -- General's Linked Girdle
(28630), -- General's Linked Sabatons
(28638), -- General's Mail Bracers
(28639), -- General's Mail Girdle
(28640), -- General's Mail Sabatons
(28641), -- General's Lamellar Belt
(28642), -- General's Lamellar Greaves
(28643), -- General's Lamellar Bracers
(28644), -- General's Scaled Belt
(28645), -- General's Scaled Greaves
(28646), -- General's Scaled Bracers
(28676), -- Heart of Urtrak
(28679), -- Grand Marshal's Lamellar Chestpiece
(28680), -- Grand Marshal's Lamellar Gauntlets
(28681), -- Grand Marshal's Lamellar Helm
(28683), -- Grand Marshal's Lamellar Shoulders
(28684), -- Grand Marshal's Leather Gloves
(28685), -- Grand Marshal's Leather Helm
(28686), -- Grand Marshal's Leather Legguards
(28687), -- Grand Marshal's Leather Spaulders
(28688), -- Grand Marshal's Leather Tunic
(28689), -- Grand Marshal's Linked Armor
(28690), -- Grand Marshal's Linked Gauntlets
(28691), -- Grand Marshal's Linked Helm
(28692), -- Grand Marshal's Linked Leggings
(28693), -- Grand Marshal's Linked Spaulders
(28694), -- Grand Marshal's Mail Armor
(28695), -- Grand Marshal's Mail Gauntlets
(28696), -- Grand Marshal's Mail Helm
(28697), -- Grand Marshal's Mail Leggings
(28698), -- Grand Marshal's Mail Spaulders
(28699), -- Grand Marshal's Plate Chestpiece
(28700), -- Grand Marshal's Plate Gauntlets
(28701), -- Grand Marshal's Plate Helm
(28702), -- Grand Marshal's Plate Legguards
(28703), -- Grand Marshal's Plate Shoulders
(28704), -- Grand Marshal's Satin Gloves
(28705), -- Grand Marshal's Satin Hood
(28706), -- Grand Marshal's Satin Leggings
(28707), -- Grand Marshal's Satin Mantle
(28708), -- Grand Marshal's Satin Robe
(28709), -- Grand Marshal's Scaled Chestpiece
(28710), -- Grand Marshal's Scaled Gauntlets
(28711), -- Grand Marshal's Scaled Helm
(28712), -- Grand Marshal's Scaled Legguards
(28713), -- Grand Marshal's Scaled Shoulders
(28714), -- Grand Marshal's Silk Amice
(28715), -- Grand Marshal's Silk Cowl
(28716), -- Grand Marshal's Silk Handguards
(28717), -- Grand Marshal's Silk Raiment
(28718), -- Grand Marshal's Silk Trousers
(28719), -- Grand Marshal's Wyrmhide Gloves
(28720), -- Grand Marshal's Wyrmhide Helm
(28721), -- Grand Marshal's Wyrmhide Legguards
(28722), -- Grand Marshal's Wyrmhide Spaulders
(28723), -- Grand Marshal's Wyrmhide Tunic
(28724), -- Grand Marshal's Lamellar Legguards
(28738), -- Monster - Staff, Benediction
(28739), -- Monster - Staff, Anathema
(28784), -- Unyielding Banner Scrap
(28805), -- High Warlord's Chain Armor
(28806), -- High Warlord's Chain Gauntlets
(28807), -- High Warlord's Chain Helm
(28808), -- High Warlord's Chain Leggings
(28809), -- High Warlord's Chain Spaulders
(28811), -- High Warlord's Dragonhide Gloves
(28812), -- High Warlord's Dragonhide Helm
(28813), -- High Warlord's Dragonhide Legguards
(28814), -- High Warlord's Dragonhide Spaulders
(28815), -- High Warlord's Dragonhide Tunic
(28817), -- High Warlord's Dreadweave Gloves
(28818), -- High Warlord's Dreadweave Hood
(28819), -- High Warlord's Dreadweave Leggings
(28820), -- High Warlord's Dreadweave Mantle
(28821), -- High Warlord's Dreadweave Robe
(28831), -- High Warlord's Lamellar Chestpiece
(28832), -- High Warlord's Lamellar Gauntlets
(28833), -- High Warlord's Lamellar Helm
(28834), -- High Warlord's Lamellar Legguards
(28835), -- High Warlord's Lamellar Shoulders
(28836), -- High Warlord's Leather Gloves
(28837), -- High Warlord's Leather Helm
(28838), -- High Warlord's Leather Legguards
(28839), -- High Warlord's Leather Spaulders
(28840), -- High Warlord's Leather Tunic
(28841), -- High Warlord's Linked Armor
(28842), -- High Warlord's Linked Gauntlets
(28843), -- High Warlord's Linked Helm
(28844), -- High Warlord's Linked Leggings
(28845), -- High Warlord's Linked Spaulders
(28846), -- High Warlord's Mail Armor
(28847), -- High Warlord's Mail Gauntlets
(28848), -- High Warlord's Mail Helm
(28849), -- High Warlord's Mail Leggings
(28850), -- High Warlord's Mail Spaulders
(28851), -- High Warlord's Plate Chestpiece
(28852), -- High Warlord's Plate Gauntlets
(28853), -- High Warlord's Plate Helm
(28854), -- High Warlord's Plate Legguards
(28855), -- High Warlord's Plate Shoulders
(28856), -- High Warlord's Satin Gloves
(28857), -- High Warlord's Satin Hood
(28858), -- High Warlord's Satin Leggings
(28859), -- High Warlord's Satin Mantle
(28860), -- High Warlord's Satin Robe
(28861), -- High Warlord's Scaled Chestpiece
(28862), -- High Warlord's Scaled Gauntlets
(28863), -- High Warlord's Scaled Helm
(28864), -- High Warlord's Scaled Legguards
(28865), -- High Warlord's Scaled Shoulders
(28866), -- High Warlord's Silk Amice
(28867), -- High Warlord's Silk Cowl
(28868), -- High Warlord's Silk Handguards
(28869), -- High Warlord's Silk Raiment
(28870), -- High Warlord's Silk Trousers
(28871), -- High Warlord's Wyrmhide Gloves
(28872), -- High Warlord's Wyrmhide Helm
(28873), -- High Warlord's Wyrmhide Legguards
(28874), -- High Warlord's Wyrmhide Spaulders
(28875), -- High Warlord's Wyrmhide Tunic
(28905), -- Monster - Claw, Badass
(28917), -- High Warlord's Bonegrinder
(28918), -- High Warlord's Decapitator
(28919), -- High Warlord's Maul
(28920), -- High Warlord's Cleaver
(28921), -- High Warlord's Hacker
(28922), -- High Warlord's Left Ripper
(28923), -- High Warlord's Painsaw
(28924), -- High Warlord's Bonecracker
(28925), -- High Warlord's Pummeler
(28926), -- High Warlord's Quickblade
(28928), -- High Warlord's Right Ripper
(28929), -- High Warlord's Shanker
(28930), -- High Warlord's Shiv
(28931), -- High Warlord's Spellblade
(28933), -- High Warlord's Heavy Crossbow
(28935), -- High Warlord's War Staff
(28937), -- High Warlord's Slicer
(28938), -- High Warlord's Battletome
(28939), -- High Warlord's Barricade
(28940), -- Grand Marshal's Barricade
(28941), -- Grand Marshal's Battletome
(28942), -- Grand Marshal's Bonegrinder
(28943), -- Grand Marshal's Warblade
(28944), -- Grand Marshal's Cleaver
(28945), -- Grand Marshal's Decapitator
(28946), -- Grand Marshal's Hacker
(28947), -- Grand Marshal's Left Ripper
(28948), -- Grand Marshal's Maul
(28949), -- Grand Marshal's Painsaw
(28950), -- Grand Marshal's Bonecracker
(28951), -- Grand Marshal's Pummeler
(28952), -- Grand Marshal's Quickblade
(28953), -- Grand Marshal's Right Ripper
(28954), -- Grand Marshal's Shanker
(28955), -- Grand Marshal's Shiv
(28956), -- Grand Marshal's Slicer
(28957), -- Grand Marshal's Spellblade
(28959), -- Grand Marshal's War Staff
(28960), -- Grand Marshal's Heavy Crossbow
(28973), -- Marshal's Chain Bracers
(28974), -- Marshal's Chain Girdle
(28975), -- Marshal's Chain Sabatons
(28976), -- Marshal's Dragonhide Belt
(28977), -- Marshal's Dragonhide Boots
(28978), -- Marshal's Dragonhide Bracers
(28980), -- Marshal's Dreadweave Belt
(28981), -- Marshal's Dreadweave Cuffs
(28982), -- Marshal's Dreadweave Stalkers
(28983), -- Marshal's Lamellar Belt
(28984), -- Marshal's Lamellar Bracers
(28985), -- Marshal's Lamellar Greaves
(28986), -- Marshal's Leather Belt
(28987), -- Marshal's Leather Boots
(28988), -- Marshal's Leather Bracers
(28989), -- Marshal's Linked Bracers
(28990), -- Marshal's Linked Girdle
(28991), -- Marshal's Linked Sabatons
(28992), -- Marshal's Mail Bracers
(28993), -- Marshal's Mail Girdle
(28994), -- Marshal's Mail Sabatons
(28995), -- Marshal's Plate Belt
(28996), -- Marshal's Plate Bracers
(28997), -- Marshal's Plate Greaves
(28998), -- Marshal's Scaled Belt
(28999), -- Marshal's Scaled Bracers
(29000), -- Marshal's Scaled Greaves
(29001), -- Marshal's Silk Belt
(29002), -- Marshal's Silk Cuffs
(29003), -- Marshal's Silk Footguards
(29004), -- Marshal's Wyrmhide Belt
(29005), -- Marshal's Wyrmhide Boots
(29006), -- Marshal's Wyrmhide Bracers
(29024), -- Eye of the Storm Mark of Honor
(29041), -- Draenethyst Crystal of Command
(29120), -- Pattern: Truefaith Vestments
(29210), -- Assassin's Throwing Axe
(29225), -- zzoldSwift Warstrider
(29237), -- Warpath Bracers
(29311), -- Fel Reaver Construction Manual
(29410), -- Monster - Mace2H, Warhammer Ebony - White Flame
(29419), -- Monster - Glaive - 3 Blade Purple - Ethereal, Ethereum (Red Glow)
(29539), -- Cobra Scales
(29547), -- Wind Scales
(29548), -- Nether Dragonscales
(29565), -- Raptor Liver
(29569), -- Strong Junkbox
(29571), -- A Steamy Romance Novel
(29575), -- A Jack-o'-Lantern
(29576), -- Shark Bait
(29645), -- Monster - Sword2H, Draenei A02 Rusty
(29712), -- Monster - Axe, Draenei C01 Ice
(29749), -- Farahlon Lasher Cutting
(29751), -- Talbuk Horn Sample
(29769), -- Diagnostic Results
(29790), -- Demolition Charges
(29805), -- Socrethar's Head
(29828), -- Rogue 150 Epic Test Dagger 1800
(29839), -- QAEnchant Weapon Mongoose
(29840), -- QAEnchant Weapon Soulfrost
(29841), -- QAEnchant Weapon Sunfire
(29842), -- QAEnchant Weapon +40 Spell Damage
(29852), -- QAEnchant Boots +9 Stamina &amp; +8% Speed
(29856), -- QAEnchant Boots +12 Agility
(29857), -- QAEnchant Boots +12 Stamina
(29860), -- QAEnchant Cloak +12 Agility
(29861), -- QAEnchant Cloak +20 Spell Penetration
(29863), -- QAEnchant Gloves +20 Spell Damage
(29868), -- QAEnchant Gloves +26 Attack Power
(29871), -- QAEnchant Chest +15 Spirit
(29872), -- QAEnchant Chest +6 Stats
(29874), -- QAEnchant Chest +150 Health
(29885), -- Hunter 120 Epic Test Bullets
(29887), -- Hunter 150 Epic Ammo Box
(29961), -- Enraged Earthen Soul
(29963), -- Enraged Fiery Soul
(30193), -- QAEnchant Ring +12 Spell Damage
(30197), -- QAEnchant Ring +4 Stats
(30287), -- Mantle of Arcane Mastery
(30288), -- Cenarion Warden's Gloves
(30289), -- Cenarion Warden's Belt
(30309), -- Stonebreaker Brew
(30320), -- Bundle of Nether Spikes
(30414), -- Monster - Axe, 2H Gorehowl (GROM HELLSCREAM ONLY)
(30418), -- Darkspear (Purple Glow)
(30427), -- Naga Treasure Map - Questgiver (PH)
(30430), -- Boiled Blood
(30438), -- Cache of the Legion Key
(30448), -- Talon of Al'ar
(30491), -- General's Plate Greaves Tier 2
(30499), -- Brightsong Wine
(30524), -- Ancient Draenei Manuscript, Chapter 1
(30525), -- Ancient Draenei Manuscript, Chapter 2
(30526), -- Ancient Draenei Manuscript, Chapter 3
(30539), -- Tally's Waiver (Signed)
(30559), -- Etched Fire Opal
(30567), -- Charged Vekh'nir Crystal
(30595), -- Legion Codex Key
(30613), -- Felfire Diemetradon Eye
(30630), -- Fel Reaver Energy Matrix
(30632), -- Lament of the Highborne
(30658), -- Flanis's Pack
(30659), -- Kagrosh's Pack
(30703), -- Conjured Mountain Spring Water
(30717), -- Harbinger's Pendant
(30760), -- Formal Draenic Robe
(30805), -- Thick Stain Resistant Gloves
(30845), -- Glyph of Chromatic Warding
(31122), -- Overseer Disguise
(31123), -- Spinning Nether-weather Vane
(31130), -- Wyrmcult Blackwhelp
(31246), -- Nagahide Leggings
(31252), -- Charred Key Mold
(31266), -- (Action Figure) Tauren Hunter Polearm
(31346), -- Burning Bleeding Hollow Torch
(31365), -- Energized Headpiece
(31490), -- Netherwing Protector's Shield
(31491), -- Netherwing Defender's Shield
(31492), -- Claw of the Netherwing Flight
(31493), -- Netherwing Spiritualist's Charm
(31494), -- Netherwing Sorceror's Charm
(31518), -- Exorcism Feather
(31530), -- Sample of Primal Mooncloth
(31584), -- High Warlord's Kodohide Gloves
(31585), -- High Warlord's Kodohide Helm
(31586), -- High Warlord's Kodohide Legguards
(31587), -- High Warlord's Kodohide Spaulders
(31588), -- High Warlord's Kodohide Tunic
(31589), -- Grand Marshal's Kodohide Gloves
(31590), -- Grand Marshal's Kodohide Helm
(31591), -- Grand Marshal's Kodohide Legguards
(31592), -- Grand Marshal's Kodohide Spaulders
(31593), -- Grand Marshal's Kodohide Tunic
(31594), -- General's Kodohide Belt
(31595), -- General's Kodohide Boots
(31596), -- Marshal's Kodohide Belt
(31597), -- Marshal's Kodohide Boots
(31598), -- General's Kodohide Bracers
(31599), -- Marshal's Kodohide Bracers
(31607), -- Demoniac Scryer Reading
(31620), -- Grand Marshal's Mooncloth Mitts
(31621), -- High Warlord's Mooncloth Mitts
(31622), -- Grand Marshal's Mooncloth Cowl
(31623), -- Grand Marshal's Mooncloth Legguards
(31624), -- Grand Marshal's Mooncloth Shoulderpads
(31625), -- Grand Marshal's Mooncloth Vestments
(31626), -- High Warlord's Mooncloth Cowl
(31627), -- High Warlord's Mooncloth Legguards
(31628), -- High Warlord's Mooncloth Shoulderpads
(31629), -- High Warlord's Mooncloth Vestments
(31630), -- Grand Marshal's Ornamented Chestplate
(31631), -- Grand Marshal's Ornamented Gloves
(31632), -- Grand Marshal's Ornamented Headguard
(31633), -- Grand Marshal's Ornamented Leggings
(31634), -- Grand Marshal's Ornamented Spaulders
(31635), -- High Warlord's Ornamented Chestplate
(31636), -- High Warlord's Ornamented Gloves
(31637), -- High Warlord's Ornamented Headguard
(31638), -- High Warlord's Ornamented Leggings
(31639), -- High Warlord's Ornamented Spaulders
(31640), -- Grand Marshal's Ringmail Chestguard
(31641), -- Grand Marshal's Ringmail Gloves
(31642), -- Grand Marshal's Ringmail Headpiece
(31643), -- Grand Marshal's Ringmail Legguards
(31644), -- Grand Marshal's Ringmail Shoulders
(31646), -- High Warlord's Ringmail Chestguard
(31647), -- High Warlord's Ringmail Gloves
(31648), -- High Warlord's Ringmail Headpiece
(31649), -- High Warlord's Ringmail Legguards
(31650), -- High Warlord's Ringmail Shoulderpads
(31665), -- Toy RC Mortar Tank
(31716), -- Unused Axe of the Executioner
(31730), -- Heirloom Signet of Convalescence
(31802), -- Fleshling Simulation Staff
(31813), -- Warp Chaser Blood
(31824), -- Monster - Work Wrench
(31843), -- QAEnchant Bracer +24 Attack Power
(31845), -- QAEnchant Bracer +15 Spell Damage
(31849), -- QAEnchant Bracer +12 Strength
(31942), -- Deathwing Brood Cloak
(31958), -- Merciless Gladiator's Bonecracker
(31959), -- Merciless Gladiator's Bonegrinder
(31965), -- Merciless Gladiator's Cleaver
(31966), -- Merciless Gladiator's Decapitator
(31978), -- Merciless Gladiator's Endgame
(31984), -- Merciless Gladiator's Greatsword
(31985), -- Merciless Gladiator's Hacker
(31986), -- Merciless Gladiator's Crossbow of the Phoenix
(32003), -- Merciless Gladiator's Left Ripper
(32014), -- Merciless Gladiator's Maul
(32025), -- Merciless Gladiator's Painsaw
(32026), -- Merciless Gladiator's Pummeler
(32027), -- Merciless Gladiator's Quickblade
(32028), -- Merciless Gladiator's Right Ripper
(32044), -- Merciless Gladiator's Shanker
(32045), -- Merciless Gladiator's Shield Wall
(32046), -- Merciless Gladiator's Shiv
(32052), -- Merciless Gladiator's Slicer
(32053), -- Merciless Gladiator's Spellblade
(32054), -- Merciless Gladiator's War Edge
(32055), -- Merciless Gladiator's War Staff
(32093), -- Chancellor's Dreadweave Gloves
(32094), -- Chancellor's Dreadweave Hood
(32095), -- Chancellor's Dreadweave Leggings
(32096), -- Chancellor's Dreadweave Mantle
(32097), -- Chancellor's Dreadweave Robe
(32098), -- Chancellor's Mooncloth Cowl
(32099), -- Chancellor's Mooncloth Legguards
(32100), -- Chancellor's Mooncloth Mitts
(32101), -- Chancellor's Mooncloth Shoulderpads
(32102), -- Chancellor's Mooncloth Vestments
(32103), -- Chancellor's Satin Gloves
(32104), -- Chancellor's Satin Hood
(32105), -- Chancellor's Satin Leggings
(32106), -- Chancellor's Satin Mantle
(32107), -- Chancellor's Satin Robe
(32108), -- Chancellor's Silk Amice
(32109), -- Chancellor's Silk Cowl
(32110), -- Chancellor's Silk Handguards
(32111), -- Chancellor's Silk Raiment
(32112), -- Chancellor's Silk Trousers
(32113), -- Chancellor's Dragonhide Gloves
(32114), -- Chancellor's Dragonhide Helm
(32115), -- Chancellor's Dragonhide Legguards
(32116), -- Chancellor's Dragonhide Spaulders
(32117), -- Chancellor's Dragonhide Tunic
(32118), -- Chancellor's Kodohide Gloves
(32119), -- Chancellor's Kodohide Helm
(32120), -- Chancellor's Leather Legguards
(32121), -- Chancellor's Kodohide Spaulders
(32122), -- Chancellor's Kodohide Legguards
(32123), -- Chancellor's Kodohide Tunic
(32124), -- Chancellor's Leather Gloves
(32125), -- Chancellor's Leather Helm
(32126), -- Chancellor's Leather Spaulders
(32127), -- Chancellor's Leather Tunic
(32128), -- Chancellor's Wyrmhide Gloves
(32129), -- Chancellor's Wyrmhide Helm
(32130), -- Chancellor's Wyrmhide Legguards
(32131), -- Chancellor's Wyrmhide Spaulders
(32132), -- Chancellor's Wyrmhide Tunic
(32133), -- Chancellor's Chain Armor
(32134), -- Chancellor's Chain Gauntlets
(32135), -- Chancellor's Chain Helm
(32136), -- Chancellor's Chain Leggings
(32137), -- Chancellor's Chain Spaulders
(32138), -- Chancellor's Linked Armor
(32139), -- Chancellor's Linked Gauntlets
(32140), -- Chancellor's Linked Helm
(32141), -- Chancellor's Linked Leggings
(32142), -- Chancellor's Linked Spaulders
(32143), -- Chancellor's Mail Armor
(32144), -- Chancellor's Mail Gauntlets
(32145), -- Chancellor's Mail Helm
(32146), -- Chancellor's Mail Leggings
(32147), -- Chancellor's Mail Spaulders
(32148), -- Chancellor's Ringmail Chestguard
(32149), -- Chancellor's Ringmail Gloves
(32150), -- Chancellor's Ringmail Headpiece
(32151), -- Chancellor's Ringmail Legguards
(32152), -- Chancellor's Ringmail Shoulders
(32153), -- Chancellor's Lamellar Chestpiece
(32154), -- Chancellor's Lamellar Gauntlets
(32155), -- Chancellor's Lamellar Helm
(32156), -- Chancellor's Lamellar Legguards
(32157), -- Chancellor's Lamellar Shoulders
(32158), -- Chancellor's Ornamented Chestplate
(32159), -- Chancellor's Ornamented Gloves
(32160), -- Chancellor's Ornamented Headguard
(32161), -- Chancellor's Ornamented Leggings
(32162), -- Chancellor's Ornamented Spaulders
(32163), -- Chancellor's Plate Chestpiece
(32164), -- Chancellor's Plate Gauntlets
(32165), -- Chancellor's Plate Helm
(32166), -- Chancellor's Plate Legguards
(32167), -- Chancellor's Plate Shoulders
(32168), -- Chancellor's Scaled Chestpiece
(32169), -- Chancellor's Scaled Gauntlets
(32170), -- Chancellor's Scaled Helm
(32171), -- Chancellor's Scaled Legguards
(32172), -- Chancellor's Scaled Shoulders
(32173), -- Chancellor's Bonecracker
(32174), -- Chancellor's Cleaver
(32175), -- Chancellor's Hacker
(32176), -- Chancellor's Pummeler
(32177), -- Chancellor's Quickblade
(32178), -- Chancellor's Shanker
(32179), -- Chancellor's Shiv
(32180), -- Chancellor's Slicer
(32181), -- Chancellor's Bonegrinder
(32182), -- Chancellor's Decapitator
(32183), -- Chancellor's Maul
(32184), -- Chancellor's Painsaw
(32185), -- Chancellor's War Staff
(32186), -- Chancellor's Warblade
(32187), -- Chancellor's Heavy Crossbow
(32188), -- Chancellor's Left Ripper
(32189), -- Chancellor's Right Ripper
(32190), -- Chancellor's Spellblade
(32192), -- Chancellor's Barricade
(32320), -- Captive Sparrowhawk
(32364), -- Southfury Moonstone
(32407), -- Creature - Maiev's Glaive
(32408), -- Naj'entus Spine
(32412), -- Design: Relentless Earthstorm Diamond
(32414), -- Tom's Legs A
(32415), -- Tom's Legs B
(32416), -- Tom's Legs C
(32417), -- Tom's Legs 1
(32418), -- Tom's Legs 2
(32419), -- Tom's Legs 3
(32421), -- Tom's Axe A
(32422), -- Tom's Axe B
(32450), -- Gladiator's Gavel
(32451), -- Gladiator's Salvation
(32452), -- Gladiator's Reprieve
(32465), -- Fortune Coin
(32466), -- Bland Blade
(32482), -- Touch of Victory
(32542), -- Imp in a Ball
(32543), -- Tier 5 Druid Test Gear
(32544), -- Tier 5 Druid Test Gear Box 2
(32545), -- Tier 5 Hunter Test Gear
(32546), -- Tier 5 Hunter Test Gear Box 2
(32547), -- Tier 5 Mage Test Gear
(32548), -- Tier 5 Mage Test Gear Box 2
(32549), -- Tier 5 Paladin Test Gear
(32550), -- Tier 5 Paladin Test Gear Box 2
(32551), -- Tier 5 Priest Test Gear
(32552), -- Tier 5 Priest Test Gear Box 2
(32553), -- Tier 5 Rogue Test Gear
(32554), -- Tier 5 Rogue Test Gear Box 2
(32555), -- Tier 5 Shaman Test Gear
(32556), -- Tier 5 Shaman Test Gear Box 2
(32557), -- Tier 5 Warlock Test Gear
(32558), -- Tier 5 Warlock Test Gear Box 2
(32559), -- Tier 5 Warrior Test Gear
(32560), -- Tier 5 Warrior Test Gear Box 2
(32561), -- Tier 5 Arrow Box
(32566), -- Picnic Basket
(32578), -- Charged Crystal Focus
(32594), -- Ogrela Test Tunic
(32595), -- Ogrela Reagent Dust
(32598), -- Unstable Flask of the Beast
(32601), -- Unstable Flask of the Sorcerer
(32615), -- Monster - Black Temple - Sword, 1H - Shadowmoon Soldier
(32618), -- [DEPRECATED]Crystalforged Darkrune
(32626), -- Large Copper Metamorphosis Geode
(32627), -- Small Copper Metamorphosis Geode
(32628), -- Large Silver Metamorphosis Geode
(32629), -- Large Gold Metamorphosis Geode
(32630), -- Small Gold Metamorphosis Geode
(32631), -- Small Silver Metamorphosis Geode
(32633), -- Monster - Glavie, Illidan - Black Temple (Left Hand)
(32642), -- Raw Darkrune
(32655), -- Crystalweave Bracers
(32656), -- Crystalhide Handwraps
(32658), -- Badge of Tenacity
(32659), -- Crystal-Infused Shiv
(32660), -- Crystalforged Sword
(32661), -- Apexis Crystal Mace
(32662), -- Flaming Quartz Staff
(32663), -- Apexis Cleaver
(32664), -- Dreamcrystal Band
(32665), -- Crystalweave Cape
(32688), -- Bloodstained Fortune
(32689), -- Bloodstained Fortune
(32690), -- Bloodstained Fortune
(32691), -- Bloodstained Fortune
(32692), -- Bloodstained Fortune
(32693), -- Bloodstained Fortune
(32700), -- Bloodstained Fortune
(32701), -- Bloodstained Fortune
(32702), -- Bloodstained Fortune
(32703), -- Bloodstained Fortune
(32704), -- Bloodstained Fortune
(32705), -- Bloodstained Fortune
(32706), -- Bloodstained Fortune
(32707), -- Bloodstained Fortune
(32708), -- Bloodstained Fortune
(32709), -- Bloodstained Fortune
(32710), -- Bloodstained Fortune
(32711), -- Bloodstained Fortune
(32712), -- Bloodstained Fortune
(32713), -- Bloodstained Fortune
(32725), -- Murkblood Miner's Pick
(32734), -- Hand of the Overseer
(32735), -- Radiant Spencerite
(32760), -- The Macho Gnome's Arrow
(32761), -- The Sarge's Bullet
(32762), -- Rulkster's Brain Juice
(32763), -- Rulkster's Secret Sauce
(32764), -- Flaskataur's Celestial Brew
(32765), -- Flaskataur's Tears
(32766), -- Flaskataur's Flask of Flaskocity
(32767), -- Flaskataur's Flask of Pretty Good Power
(32773), -- Bash'ir's Skeleton Key
(32824), -- Tigole's Trashbringer
(32840), -- Major Arcane Protection Potion
(32841), -- Monster - Dagger, Fang of Vashj
(32844), -- Major Nature Protection Potion
(32845), -- Major Shadow Protection Potion
(32846), -- Major Fire Protection Potion
(32847), -- Major Frost Protection Potion
(32895), -- Scroll of the Maelstrom
(32896), -- Scroll of the Sun
(32906), -- Stunned Wolpertinger
(32911), -- Empty Brewfest Stein
(32914), -- Bland Shiv
(32915), -- Filled Yellow Brewfest Stein
(32917), -- Filled Yellow Brewfest Stein
(32918), -- Filled Yellow Brewfest Stein
(32919), -- Filled Yellow Brewfest Stein
(32920), -- Filled Yellow Brewfest Stein
(32944), -- Talon of the Phoenix
(32949), -- Unusually Slow Sword
(32950), -- Unusually Slow Mace
(32954), -- Tom's Boots 1
(32955), -- Tom's Boots 2
(32956), -- Tom's Boots 3
(32957), -- Tom's Bracer 1
(32958), -- Tom's Bracer 2
(32959), -- Tom's Bracer 3
(32961), -- Merciless Gladiator's Reprieve
(32962), -- Merciless Gladiator's Touch of Defeat
(32963), -- Merciless Gladiator's Gavel
(32964), -- Merciless Gladiator's Salvation
(32971), -- Water Bucket
(32972), -- Beer Goggles
(32973), -- General's Mooncloth Cuffs
(32974), -- General's Mooncloth Belt
(32975), -- General's Mooncloth Slippers
(32976), -- Marshal's Mooncloth Belt
(32977), -- Marshal's Mooncloth Cuffs
(32978), -- Marshal's Mooncloth Slippers
(32982), -- General's Ornamented Belt
(32983), -- General's Ornamented Bracers
(32984), -- General's Ornamented Greaves
(32985), -- Marshal's Ornamented Belt
(32986), -- Marshal's Ornamented Bracers
(32987), -- Marshal's Ornamented Greaves
(32991), -- General's Ringmail Bracers
(32992), -- General's Ringmail Girdle
(32993), -- General's Ringmail Sabatons
(32994), -- Marshal's Ringmail Bracers
(32995), -- Marshal's Ringmail Girdle
(32996), -- Marshal's Ringmail Sabatons
(33017), -- Filled Blue Brewfest Stein
(33018), -- Filled Blue Brewfest Stein
(33019), -- Filled Blue Brewfest Stein
(33020), -- Filled Blue Brewfest Stein
(33021), -- Filled Blue Brewfest Stein
(33041), -- Salvaged Strongbox
(33051), -- Grimtotem Battle Plan
(33054), -- The Seal of Danzalar
(33060), -- Soulbound Test Gem
(33063), -- Really Tough Brewfest Bread
(33065), -- Veteran's Pendant of Dominance
(33066), -- Veteran's Pendant of Triumph
(33067), -- Veteran's Pendant of Conquest
(33068), -- Veteran's Pendant of Salvation
(33076), -- Merciless Gladiator's Idol of Tenacity
(33077), -- Merciless Gladiator's Libram of Justice
(33078), -- Merciless Gladiator's Totem of the Third Wind
(33080), -- Elixir of Water Elementals
(33081), -- Voodoo Skull
(33087), -- Black Dragonkin Essence
(33089), -- Monster - Mutton
(33096), -- Complimentary Brewfest Sampler
(33105), -- Budd's Guise of Zul'aman
(33111), -- Pristine Mistsaber Catgut
(33121), -- Tarnished Promise Ring
(33132), -- Delicate Fire Ruby
(33137), -- Sparkling Falling Star
(33138), -- Mystic Bladestone
(33139), -- Brilliant Bladestone
(33141), -- Great Bladestone
(33142), -- Rigid Bladestone
(33147), -- Formula: Enchant Cloak - Subtlety
(33176), -- Flying Broom
(33182), -- Swift Flying Broom
(33183), -- Old Magic Broom
(33184), -- Swift Magic Broom
(33197), -- Mossy Necklace
(33218), -- Goblin Gumbo
(33219), -- Goblin Gumbo Kettle
(33223), -- Fishing Chair
(33224), -- Reins of the Spectral Tiger
(33225), -- Reins of the Swift Spectral Tiger
(33309), -- Merciless Gladiator's Redoubt
(33312), -- Mana Sapphire
(33313), -- Merciless Gladiator's Barrier
(33315), -- QAEnchant Weapon Executioner
(33316), -- Tome of Arcane Brilliance
(33336), -- Sergeant's Spyglass
(33341), -- Brave's Spyglass
(33350), -- Frostmourne Art Demo
(33455), -- Brewfest Prize Ticket
(33475), -- Frostmourne
(33477), -- Giant Yeti Meal
(33482), -- Cobra-Lash Boots
(33558), -- Deranged Explorer Brain
(33599), -- Dragonflayer Blood Sample
(33604), -- Plague Shooter
(33610), -- Shaghide Boar Heart
(33614), -- Empty Apothecary's Flask
(33615), -- Flask of Vrykul Blood
(33616), -- Unstable Mix
(33617), -- Balanced Concoction
(33634), -- Orehammer's Precision Bombs
(33668), -- Vengeful Gladiator's Chain Spaulders
(33671), -- Vengeful Gladiator's Dragonhide Gloves
(33674), -- Vengeful Gladiator's Dragonhide Spaulders
(33676), -- Vengeful Gladiator's Dreadweave Gloves
(33679), -- Vengeful Gladiator's Dreadweave Mantle
(33682), -- Vengeful Gladiator's Felweave Amice
(33684), -- Vengeful Gladiator's Felweave Handguards
(33690), -- Vengeful Gladiator's Kodohide Gloves
(33693), -- Vengeful Gladiator's Kodohide Spaulders
(33699), -- Vengeful Gladiator's Lamellar Shoulders
(33700), -- Vengeful Gladiator's Leather Gloves
(33703), -- Vengeful Gladiator's Leather Spaulders
(33717), -- Vengeful Gladiator's Mooncloth Gloves
(33720), -- Vengeful Gladiator's Mooncloth Mantle
(33726), -- Vengeful Gladiator's Ornamented Spaulders
(33729), -- Vengeful Gladiator's Plate Gauntlets
(33732), -- Vengeful Gladiator's Plate Shoulders
(33744), -- Vengeful Gladiator's Satin Gloves
(33747), -- Vengeful Gladiator's Satin Mantle
(33753), -- Vengeful Gladiator's Scaled Shoulders
(33767), -- Vengeful Gladiator's Wyrmhide Gloves
(33770), -- Vengeful Gladiator's Wyrmhide Spaulders
(33781), -- The Book of Runes
(33784), -- Darkrune Fragment
(33797), -- Portable Brewfest Keg
(33803), -- Adamantite Stinger
(33809), -- Amani War Bear
(33823), -- Bloodfin Catfish
(33824), -- Crescent-Tail Skullfish
(33839), -- Kaliri Stew
(33848), -- Demon Broiled Surprise
(33850), -- Spiritual Soup
(33920), -- Vindicator's Pendant of Conquest
(33921), -- Vindicator's Pendant of Dominance
(33922), -- Vindicator's Pendant of Salvation
(33923), -- Vindicator's Pendant of Triumph
(33929), -- Brewfest Brew
(33936), -- Gladiator's Libram of Fortitude
(33937), -- Merciless Gladiator's Libram of Fortitude
(33939), -- Gladiator's Totem of Indomitability
(33940), -- Merciless Gladiator's Totem of Indomitability
(33942), -- Gladiator's Idol of Steadfastness
(33943), -- Merciless Gladiator's Idol of Steadfastness
(33945), -- Gladiator's Idol of Resolve
(33946), -- Merciless Gladiator's Idol of Resolve
(33948), -- Gladiator's Libram of Vengeance
(33949), -- Merciless Gladiator's Libram of Vengeance
(33951), -- Gladiator's Totem of Survival
(33952), -- Merciless Gladiator's Totem of Survival
(33957), -- Witches Band
(33959), -- Ring of Ghoulish Delight
(33964), -- Helm of the Stormcaller
(33987), -- Indalamar's Ring of 200 Spell Crit
(33993), -- Mojo
(33997), -- Indalamar's Ring of 400 Attack Power
(34024), -- Flask of Vrykul Blood
(34025), -- Clayton's Test Item
(34030), -- Clayton's Test Item Two
(34044), -- B-Ball
(34062), -- Conjured Mana Biscuit
(34073), -- The Horseman's Signet Ring
(34074), -- Witches Band
(34075), -- Ring of Ghoulish Delight
(34077), -- Crudely Wrapped Gift
(34107), -- Tattered Shoulderpads
(34112), -- Fjord Turkey
(34115), -- "Silvermoon" Harry's Debt
(34116), -- Jack Adams' Debt
(34117), -- Rusty Iron Key
(34120), -- Fjord Hawk
(34123), -- Fjord Hawk Egg
(34126), -- Recipe: Shoveltusk Soup
(34135), -- Dark Iron Ingots
(34138), -- Enchanted White Wand
(34139), -- Enchanted Crimson Wand
(34142), -- Infinite Sphere
(34143), -- Chromatic Sphere
(34144), -- Branch of Destruction
(34145), -- Rod of Devastation
(34146), -- Red Death
(34147), -- Silverstave
(34148), -- Purified Silverstave
(34149), -- Lightstave
(34158), -- Team A Tabard
(34171), -- Winter Stationery
(34187), -- Dragon Skull
(34191), -- Handful of Snowflakes
(34209), -- Spaulders of Reclamation
(34212), -- Sunglow Vest
(34219), -- Armor Test Item
(34221), -- Design: Chaotic Skyfire Diamond
(34335), -- Hammer of Sanctification
(34415), -- Crystaline Shard Shield
(34467), -- Test Handful of Fel Iron Bolts
(34469), -- Strange Engine Part
(34476), -- Broken Engine Part
(34484), -- Old Ironjaw
(34486), -- Old Crafty
(34492), -- Rocket Chicken
(34494), -- Paper Zeppelin
(34497), -- Paper Flying Machine
(34499), -- Paper Flying Machine Kit
(34501), -- Cleansed Ata'mal Metal
(34518), -- Golden Pig Coin
(34519), -- Silver Pig Coin
(34544), -- Essence of the Immortals
(34576), -- Battlemaster's Cruelty
(34577), -- Battlemaster's Depravity
(34578), -- Battlemaster's Determination
(34579), -- Battlemaster's Audacity
(34580), -- Battlemaster's Perseverance
(34589), -- Monster - Shield, Shattered Sun D01 Red
(34590), -- Monster - Shield, Shattered Sun D01 Yellow
(34591), -- Monster - Shield, Shattered Sun D01 White
(34622), -- Spinesever
(34623), -- The King's Filled Conch
(34627), -- Heavy Tonk Armor
(34645), -- Earthen Ink
(34647), -- Rough Parchment
(34663), -- Silver Quill
(34694), -- Monster - Sword2H, Horde PvP (Green)
(34716), -- Silver Cufflinks
(34718), -- Black Leather Shoes
(34735), -- Northrend Meat 01
(34737), -- Northrend Meat 03
(34738), -- Northrend Meat 04
(34739), -- Northrend Meat 05
(34740), -- Northrend Meat 06
(34741), -- Northrend Meat 07
(34742), -- Northrend Meat 08
(34743), -- Northrend Meat 09
(34744), -- Northrend Meat 10
(34745), -- Northrend Meat 11
(34746), -- Northrend Meat 12
(34784), -- Monster - Item, Fishing Pole (Tuskarr)
(34835), -- Omar's Gem of POWAH
(34842), -- Warsong Outfit
(34864), -- Baby Crocolisk
(34865), -- Blackfin Darter
(34867), -- Monstrous Felblood Snapper
(34868), -- World's Largest Mudfish
(34880), -- Monster - Sword, 1H Outland Raid D02
(34907), -- Shattered Gem Fragments
(34955), -- Scorched Stone
(34967), -- Juno's Test Gem
(35126), -- Fizzcrank Pilot's Insignia
(35202), -- Design: Amulet of Flowing Life
(35209), -- Plans: Hard Khorium Battlefists
(35213), -- Pattern: Fletcher's Gloves of the Phoenix
(35225), -- X-51 Nether-Rocket
(35226), -- X-51 Nether-Rocket X-TREME
(35229), -- Nether Residue
(35285), -- Giant Sunfish
(35286), -- Bloated Giant Sunfish
(35289), -- Steam Cured Hide
(35290), -- Sin'dorei Pendant of Conquest
(35291), -- Sin'dorei Pendant of Salvation
(35292), -- Sin'dorei Pendant of Triumph
(35313), -- Bloated Barbed Gill Trout
(35317), -- Vindicator's Pendant of Reprieve
(35319), -- Vindicator's Pendant of Subjugation
(35327), -- Battlemaster's Alacrity
(35396), -- Enchant 2H Weapon - Major Agility
(35397), -- Enchant 2H Weapon - Savagery
(35398), -- Enchant Boots - Boar's Speed
(35399), -- Enchant Boots - Cat's Swiftness
(35400), -- Enchant Boots - Dexterity
(35417), -- Enchant Boots - Fortitude
(35418), -- Enchant Boots - Surefooted
(35419), -- Enchant Boots - Vitality
(35420), -- Enchant Bracer - Brawn
(35421), -- Enchant Bracer - Fortitude
(35422), -- Enchant Bracer - Major Defense
(35423), -- Enchant Bracer - Major Intellect
(35424), -- Enchant Bracer - Restore Mana Prime
(35425), -- Enchant Bracer - Spellpower
(35426), -- Enchant Bracer - Stats
(35427), -- Enchant Bracer - Superior Healing
(35428), -- Enchant Chest - Exceptional Health
(35429), -- Enchant Chest - Exceptional Stats
(35430), -- Enchant Chest - Major Resilience
(35431), -- Enchant Chest - Major Spirit
(35432), -- Enchant Cloak - Greater Agility
(35433), -- Enchant Cloak - Greater Arcane Resistance
(35434), -- Enchant Cloak - Greater Shadow Resistance
(35435), -- Enchant Cloak - Major Resistance
(35436), -- Enchant Cloak - Spell Penetration
(35437), -- Enchant Cloak - Major Armor
(35438), -- Enchant Gloves - Assault
(35439), -- Enchant Gloves - Blasting
(35440), -- Enchant Gloves - Major Healing
(35441), -- Enchant Gloves - Major Spellpower
(35442), -- Enchant Gloves - Major Strength
(35443), -- Enchant Gloves - Spell Strike
(35444), -- Enchant Ring - Healing Power
(35445), -- Enchant Ring - Spellpower
(35446), -- Enchant Ring - Stats
(35447), -- Enchant Ring - Striking
(35448), -- Enchant Shield - Intellect
(35449), -- Enchant Shield - Major Stamina
(35450), -- Enchant Shield - Resistance
(35451), -- Enchant Shield - Shield Block
(35452), -- Enchant Weapon - Battlemaster
(35453), -- Enchant Weapon - Greater Agility
(35454), -- Enchant Weapon - Major Healing
(35455), -- Enchant Weapon - Major Intellect
(35456), -- Enchant Weapon - Major Spellpower
(35457), -- Enchant Weapon - Major Striking
(35458), -- Enchant Weapon - Mongoose
(35459), -- Enchant Weapon - Potency
(35460), -- Enchant Weapon - Soulfrost
(35461), -- Enchant Weapon - Spellsurge
(35462), -- Enchant Weapon - Sunfire
(35494), -- Shroud of Winter's Chill
(35495), -- The Frost Lord's War Cloak
(35496), -- Icebound Cloak
(35497), -- Cloak of the Frigid Winds
(35507), -- Amulet of Bitter Hatred
(35508), -- Choker of the Arctic Flow
(35509), -- Amulet of Glacial Tranquility
(35511), -- Hailstone Pendant
(35512), -- Pocket Full of Snow
(35514), -- Frostscythe of Lord Ahune
(35517), -- Pattern: Bindings of Lightning Reflexes
(35518), -- Pattern: Bracers of Nimble Thought
(35519), -- Pattern: Bracers of Renewed Life
(35520), -- Pattern: Living Earth Bindings
(35521), -- Pattern: Living Earth Shoulders
(35522), -- Pattern: Mantle of Nimble Thought
(35523), -- Pattern: Shoulderpads of Renewed Life
(35524), -- Pattern: Shoulders of Lightning Reflexes
(35525), -- Pattern: Swiftheal Mantle
(35526), -- Pattern: Swiftheal Wraps
(35527), -- Pattern: Swiftstrike Bracers
(35528), -- Pattern: Swiftstrike Shoulders
(35529), -- Plans: Dawnsteel Bracers
(35530), -- Plans: Dawnsteel Shoulders
(35531), -- Plans: Swiftsteel Bracers
(35532), -- Plans: Swiftsteel Shoulders
(35533), -- Design: Amulet of Flowing Life
(35535), -- Design: Hard Khorium Choker
(35537), -- Design: Pendant of Sunfire
(35538), -- Design: Ring of Flowing Life
(35539), -- Pattern: Carapace of Sun and Shadow
(35541), -- Pattern: Fletcher's Gloves of the Phoenix
(35544), -- Pattern: Hands of Eternal Light
(35545), -- Pattern: Leather Chestguard of the Sun
(35546), -- Pattern: Leather Gauntlets of the Sun
(35548), -- Pattern: Robe of Eternal Light
(35549), -- Pattern: Sun-Drenched Scale Chestguard
(35550), -- Pattern: Sun-Drenched Scale Gloves
(35551), -- Pattern: Sunfire Handwraps
(35553), -- Plans: Hard Khorium Battlefists
(35555), -- Plans: Sunblessed Breastplate
(35626), -- Eternal Mana [PH]
(35664), -- Unknown Archaeologist's Hammer
(35665), -- Soothing Lichen Wraps
(35666), -- Mark of the Spider
(35692), -- Snowfall Glade Pup
(35701), -- Issliruk's Totem
(35718), -- Raelorasz' Flare
(35722), -- Foror's Wipe Neutralizer
(35728), -- Greater Inscription of the Blade
(35729), -- Greater Inscription of the Knight
(35730), -- Greater Inscription of the Oracle
(35731), -- Greater Inscription of the Orb
(35738), -- Brann Bronzebeard's Journal
(35757), -- Monster - Sword2H, Northrend C02 Red (Red Flame)
(35777), -- Skadir Navigation Chart - Part 3
(35792), -- Mage Hunter Personal Effects
(35803), -- Scalawag Frog
(35806), -- Eye of the Prophets
(35840), -- Stone Hunk O' Gargoyle
(35854), -- Scarlet Seal
(35876), -- Talbuk Cape
(35946), -- Fizzcrank Practice Parachute
(36454), -- Domed Buckler
(36477), -- Twin-Edged Stiletto
(36491), -- Serrated Maul
(36505), -- Frosted Steel Mallet
(36519), -- Moonlit Katana
(36533), -- Adorned Broadsword
(36547), -- Jester's Stick
(36561), -- Mummified Paw
(36575), -- Dragonflayer Hatchet
(36589), -- Segmenting Broadaxe
(36603), -- Archaic Longspear
(36617), -- Yielding Bow
(36631), -- Horned Crossbow
(36645), -- Tuskarr Boomstick
(36659), -- Shivery Wand
(36673), -- Wise Dagger
(36687), -- Illuminated Scepter
(36701), -- Pine Needle Staff
(36715), -- Runed Shuriken
(36733), -- Coldwind Lumber
(36748), -- Dark Brewmaiden's Brew
(36765), -- Sample of Rockflesh
(36768), -- Vial of Corrosive Spit
(36772), -- Captured Jormungar Spawn
(36794), -- Scoured Fishbones
(36795), -- Unhinged Claw
(36799), -- Mana Gem
(36828), -- Filled Blood Gem
(36829), -- Supremely Slimy Ichor
(36830), -- Gratuitously Gelatinous Goo
(36836), -- Filled Unholy Gem
(36846), -- Filled Frost Gem
(36848), -- War Golem Blueprint
(36862), -- Worn Troll Dice
(36863), -- Decahedral Dwarven Dice
(36866), -- HF BLUE Leather DPS Chest
(36867), -- HF BLUE Plate DPS Chest
(36889), -- Demonic Healthstone
(36890), -- Demonic Healthstone
(36891), -- Demonic Healthstone
(36892), -- Fel Healthstone
(36893), -- Fel Healthstone
(36894), -- Fel Healthstone
(36895), -- Demonic Soulstone
(36896), -- Demonic Spellstone
(36897), -- Fel Spellstone
(36899), -- Exceptional Mana Oil
(36900), -- Exceptional Wizard Oil
(36910), -- Titanium Ore
(36912), -- Saronite Ore
(36914), -- Azurite Bar
(36915), -- Froststeel Bar
(36941), -- Competitor's Tabard
(36942), -- Frostmourne
(36955), -- Grimoire of Firebolt (Rank 9)
(36959), -- Grimoire of Blood Pact (Rank 7)
(36960), -- Grimoire of Fire Shield (Rank 7)
(36964), -- Grimoire of Sacrifice (Rank 8)
(36965), -- Grimoire of Sacrifice (Rank 9)
(36966), -- Grimoire of Consume Shadows (Rank 8)
(36967), -- Grimoire of Consume Shadows (Rank 9)
(36968), -- Grimoire of Suffering (Rank 7)
(36970), -- Grimoire of Suffering (Rank 8)
(37063), -- Infused Drakkari Offering
(37089), -- Honeycone
(37090), -- Quickpoppy
(37100), -- Silver Ink
(37109), -- Discarded Silver Hand Spaulders
(37126), -- Clayton's Test Item Three
(37127), -- Brightbrew Charm
(37128), -- Balebrew Charm
(37148), -- Loose Singed Page
(37154), -- Shadowy Gloves
(37157), -- Four of Rogues
(37158), -- Five of Rogues
(37161), -- Five of Swords
(37163), -- Rogues Deck
(37164), -- Swords Deck
(37174), -- Rippling Azure Cloak
(37175), -- Glassy Silver Bracers
(37176), -- Cavern Leather Treads
(37196), -- Runecaster's Mantle
(37197), -- Tattered Castle Drape
(37210), -- Seafarer Cinch
(37225), -- Sweltering Sandals
(37243), -- Treasure Seeker's Belt
(37244), -- Fungi-Coated Boots
(37245), -- Tangled Web Bindings
(37250), -- Partially Processed Amberseeds
(37273), -- Crimson Keeper Mitts
(37278), -- BT47 Cloth Healer Belt2
(37279), -- BT48 Cloth Spell Bracer3
(37281), -- BT52 Cloth Healer Chest2
(37284), -- BT55 Cloth Spell Boots4
(37285), -- BT56 Cloth Spell Legs4
(37286), -- BT57 Cloth Healer Glove2
(37290), -- Dragon Prow Amulet
(37295), -- HF28 Cloth Spell Head4
(37296), -- BT59 Cloth Spell Gloves4
(37297), -- Gold Medallion
(37298), -- Competitor's Souvenir
(37301), -- Deprecated Test Glyph
(37303), -- Vordrassil's Ashes
(37311), -- Skybreaker Whip
(37312), -- Carrot on a Stick
(37313), -- Riding Crop
(37315), -- BT59 Leather Physical Boots4
(37316), -- HF28 Leather Physical Legs4
(37317), -- BT56 Leather Healer Boots2
(37318), -- BT55 Leather Physical Gloves4
(37321), -- BT52 Leather Healer Legs2
(37323), -- BT48 Leather Physical Belt3
(37324), -- BT47 Leather Physical Gloves3
(37326), -- Formula: Enchant Bracer - Major Spirit
(37329), -- Formula: Enchant Weapon - Exceptional Spirit
(37335), -- Formula: Enchant Cloak - Superior Agility
(37336), -- Formula: Enchant Chest - Greater Dodge
(37337), -- Formula: Enchant Bracer - Greater Stats
(37338), -- Formula: Enchant Weapon - Greater Savagery
(37343), -- Formula: Enchant Weapon - Exceptional Agility
(37345), -- Formula: Enchant Gloves - Greater Assault
(37346), -- Formula: Enchant Bracer - Expertise
(37348), -- Formula: Enchant Cloak - Haste
(37364), -- Frostbridge Orb
(37365), -- Bands of the Sky Ring
(37366), -- Drake-Champion's Bracers
(37372), -- Harpoon
(37385), -- Seared Harness
(37386), -- Ruby Heart Spaulders
(37400), -- Whalehunter Cuffs
(37410), -- Tracker's Balanced Knives
(37420), -- Sharkproof Boots
(37430), -- Solid Sky Sapphire (Unused)
(37433), -- Layered Scale Boots
(37444), -- Wavekeeper's Helm
(37448), -- BT47 Mail Physical Legs3
(37450), -- BT48 Mail Healer Chest3
(37451), -- BT49 Mail Physical Belt3
(37452), -- Fatty Bluefin
(37453), -- BT59 Mail Physical Belt4
(37454), -- HF28 Mail Physical Chest4
(37455), -- BT56 Mail Healer Gloves2
(37457), -- BT55 Mail Physical Legs4
(37466), -- BT59 Plate Physical Chest4
(37467), -- A Steamy Romance Novel: Forbidden Love
(37468), -- HF28 Plate Physical Boots4
(37469), -- BT57 Plate Healer Bracer2
(37470), -- BT56 Plate Physical Shoulders4
(37472), -- BT49 Plate Physical Bracer
(37473), -- BT48 Plate Healer Head2
(37474), -- BT47 Plate Physical Boots3
(37477), -- Lost Crusader Chestplate
(37485), -- Clam Collector Gauntlets
(37489), -- Izzard's Ever Flavor
(37501), -- Northern Salmon
(37510), -- Wristguards of Edification
(37511), -- Crucible Waistguard
(37534), -- BT56 Thrown2
(37536), -- BT57 Fast Mace2
(37544), -- Drakebone Necklace
(37579), -- Monster - Mace1H, Prince Arthas
(37587), -- Ymirjar Physician's Robe
(37590), -- Bands of Fading Light
(37597), -- Direbrew's Shanker
(37598), -- Swift Zhevra OLD
(37611), -- Epic Bland Dagger
(37624), -- Stained-Glass Shard Ring
(37625), -- Web Winder Gloves
(37646), -- Burning Skull Pendant
(37647), -- Cloak of Bloodied Waters
(37648), -- Belt of Tasseled Lanterns
(37649), -- Quarry Chisel
(37671), -- Refined Ore Gloves
(37672), -- Patina-Coated Breastplate
(37673), -- Dark Runic Mantle
(37697), -- Trade District Knife
(37698), -- Spaulders of Elder's Square
(37699), -- Festival Lane Girdle
(37706), -- Hardened Saronite Bar
(37710), -- Crashin' Thrashin' Racer Controller
(37711), -- Currency Token Test Token 1
(37719), -- Swift Zhevra
(37739), -- Brutal Gladiator's Blade of Alacrity
(37740), -- Brutal Gladiator's Swift Judgement
(37742), -- Currency Token Test Token 2
(37799), -- Reanimator's Cloak
(37800), -- Aviary Guardsman's Hauberk
(37801), -- Waistguard of the Risen Knight
(37815), -- Emerald Essence
(37827), -- Brewfest Kodo
(37837), -- Fat Lute
(37839), -- Abomination Stitching
(37856), -- Librarian's Paper Cutter
(37857), -- Helm of the Lightning Halls
(37858), -- Awakened Handguards
(37859), -- Amber Essence
(37860), -- Ruby Essence
(37878), -- Worg's Blood Elixir
(37893), -- Filled Green Brewfest Stein
(37894), -- Filled Green Brewfest Stein
(37895), -- Filled Green Brewfest Stein
(37896), -- Filled Green Brewfest Stein
(37897), -- Filled Green Brewfest Stein
(37898), -- Wild Winter Pilsner
(37900), -- Aromatic Honey Brew
(37901), -- Metok's Bubble Bock
(37902), -- Springtime Stout
(37903), -- Blackrock Lager
(37904), -- Stranglethorn Brew
(37905), -- Draenic Pale Ale
(37906), -- Binary Brew
(37907), -- Autumnal Acorn Ale
(37908), -- Bartlett's Bitter Brew
(37909), -- Lord of Frost's Private Label
(37925), -- Experimental Mixture
(37955), -- DB26 Healer Cloak
(37967), -- DB42 Spell Ring4
(37976), -- DB54 Healer Neck2
(38052), -- DB42 Leather Healer Shoulder
(38089), -- Ruby Shades
(38140), -- DB50 Spell Staff4
(38164), -- TEST HASTE RING (1500)
(38186), -- Ethereal Credit
(38204), -- DB38 Spell Wand2
(38233), -- Path of Illidan
(38243), -- Ravaging Steelfist
(38244), -- Valorous Exterminator
(38245), -- Crystalline Providence
(38246), -- Skull-Forged Blunderbuss
(38247), -- Entrail Render
(38248), -- Torch of the Fallen Souls
(38254), -- BTBlue Spell Cloak1
(38255), -- BTBlue Physical Cloak1
(38256), -- BTBlue Healer Cloak1
(38261), -- Bent House Key
(38263), -- Too-Small Armband
(38264), -- A Very Pretty Rock
(38265), -- [PH] Reins of the Black Warp Stalker
(38266), -- Rotund Relic
(38268), -- Spare Hand
(38269), -- Soggy Handkerchief
(38270), -- Slab of Blubber
(38271), -- Lean Flank
(38272), -- Bloody Giblets
(38273), -- Brain Coral
(38274), -- Large Snail Shell
(38282), -- Bland Two-Handed Blade
(38287), -- Empty Mug of Direbrew
(38288), -- Direbrew Hops
(38289), -- Coren's Lucky Coin
(38290), -- Dark Iron Smoking Pipe
(38292), -- Test Living Ruby
(38301), -- D.I.S.C.O.
(38307), -- Crafty's Bottomless Inscription Bag
(38309), -- Tabard of Nature
(38310), -- Tabard of the Arcane
(38311), -- Tabard of the Void
(38312), -- Tabard of Brilliance
(38313), -- Tabard of Fury
(38314), -- Tabard of the Defender
(38324), -- Tether to the Plane of Water
(38333), -- Drakkari Medallion
(38377), -- Dragonscale Leg Armor
(38378), -- Wyrmscale Leg Armor
(38380), -- Zul'Drak Rat
(38382), -- Basilisk Crystals
(38383), -- Valonforth's Folly
(38387), -- Grizzled Hat
(38388), -- Cap of the North
(38389), -- Comfy Raccoonskin Hat
(38390), -- The Rugged Marksman
(38442), -- Mail Melee Leatherworking Chest
(38443), -- Mail Melee Leatherworking Shoulders
(38444), -- Mail Melee Leatherworking Bracer
(38445), -- Mail Caster Leatherworking Helm
(38448), -- Leather Melee Leatherworking Gloves
(38468), -- Kalu'ak Peacebringer
(38469), -- QA Test Slow Fist Weapon
(38471), -- QA Test Slow Gun
(38480), -- QA Test Slow Two-Handed Mace
(38481), -- QA Test Slow Two-Handed Axe
(38483), -- Captured Chicken
(38484), -- QA Test +2000 Spell Power Ring
(38496), -- QA Test Gem Bracers
(38497), -- QA Test Meta Hat
(38498), -- QA Test Blank Purple Gem
(38512), -- Zepik's Hunting Horn
(38524), -- Carapace of the Scarlet Commander
(38525), -- Jailor's Padded Cover
(38527), -- Onslaught Scalemail Hauberk
(38538), -- Riding Crop
(38561), -- Jormungar Scale
(38567), -- Maraudine Prisoner Manifest
(38572), -- Bounty Procurement Enhancer
(38576), -- Big Battle Bear
(38577), -- Party G.R.E.N.A.D.E.
(38578), -- The Flag of Ownership
(38587), -- Empty Brewfest Stein
(38597), -- Pattern: Dark Arctic Boots
(38600), -- Primordial Hatchling
(38605), -- McCarty's Notes
(38606), -- Battle-worn Axe
(38619), -- Goregek's Shackles
(38621), -- Dajik's Worn Chalk
(38622), -- Lafoo's Bug Bag
(38623), -- Jaloot's Favorite Crystal
(38624), -- Moodle's Stress Ball
(38625), -- Northern Icelip
(38626), -- Empty Brew Bottle
(38629), -- Orders from the Lich King
(38630), -- Runebladed Axe
(38631), -- Runebladed Sword
(38640), -- Dense Frostweave Bandage
(38643), -- Thick Frostweave Bandage
(38644), -- Currency Token Test Token 3
(38658), -- Vampiric Batling
(38683), -- ObsoleteSigil of the Dark Rider (OLD)
(38687), -- Gooey Ghoul Drool
(38691), -- Ancestral Claymore
(38916), -- Enchant Weapon - Major Spirit
(38957), -- Scroll of Enchant Weapon - Exceptional Striking
(38958), -- Scroll of Enchant Weapon - Exceptional Intellect
(38970), -- Scroll of Enchant Gloves - Exceptional Healing
(38983), -- Scroll of Enchant Shield - Exceptional Stamina
(38994), -- Scroll of Enchant Weapon - Exceptional Healing
(38996), -- Scroll of Enchant Bracers - Major Healing
(39148), -- Baby Coralshell Turtle
(39151), -- Alabaster Pigment
(39153), -- Manual: Dense Frostweave Bandage
(39162), -- Broodmother Slivina's Skull
(39163), -- Test expire transform
(39213), -- Massive Seaforium Charge
(39263), -- Dissevered Leggings
(39302), -- Glyph of the Penguin
(39303), -- Swift Flying Carpet
(39314), -- Tiki Dervish Ceremony
(39334), -- Dusky Pigment
(39338), -- Golden Pigment
(39339), -- Emerald Pigment
(39340), -- Violet Pigment
(39341), -- Silvery Pigment
(39342), -- Nether Pigment
(39343), -- Azure Pigment
(39364), -- Hood of the Titan Defender
(39370), -- Keleseth's Persuader
(39410), -- Gauntlets of Rampant Destruction
(39427), -- Omen of Ruin
(39440), -- Greaves of the Titan Protectorate
(39460), -- Sabatons of the Rampaging Construct
(39467), -- Minion Bracers
(39468), -- The Stray
(39470), -- Medallion of the Disgraced
(39472), -- Chain of Latent Energies
(39473), -- Contortion
(39506), -- Depleted Element 115
(39526), -- Coral Crusher
(39527), -- Plated Darkfish
(39575), -- Suntouched Heartblood
(39576), -- Suntouched Water
(39614), -- True Power of the Tempest
(39644), -- Recipe: Kungaloosh
(39685), -- Indestructible Frame
(39687), -- Saronite Grenade
(39692), -- Recipe: Succulent Orca Stew
(39707), -- Verdant Tundra Cap
(39708), -- Verdant Tundra Shoulderpads
(39709), -- Verdant Tundra Boots
(39710), -- Verdant Tundra Belt
(39711), -- Verdant Tundra Bracers
(39715), -- Sigil of the Remembered Fallen - DO NOT USE
(39738), -- Thunderbrew's Hard Ale
(39739), -- Wolvar Berries
(39743), -- Monster - Staff, Northrend Runed (Iron)
(39748), -- Energized Polished Crystal
(39754), -- Monster - Sword, Northrend Iron Dwarf
(39769), -- Arcanite Ripper
(39819), -- Bloodbinder's Runestone
(39828), -- Punisher's Cloak
(39883), -- Cracked Egg
(39903), -- Argent Crusade Gratuity
(39904), -- Argent Crusade Gratuity
(39969), -- Fire Seed
(40110), -- Haunted Memento
(40199), -- Pygmy Suckerfish
(40218), -- CRobinson Plate Helm
(40219), -- CRobinson Plate Shoulders
(40220), -- CRobinson Plate Chest
(40221), -- CRobinson Plate Belt
(40222), -- CRobinson Plate Pants
(40223), -- CRobinson Plate Boots
(40224), -- CRobinson Plate Gloves
(40225), -- CRobinson Leather Helm
(40226), -- CRobinson Leather Shoulders
(40227), -- CRobinson Leather Chest
(40228), -- CRobinson Leather Belt
(40229), -- CRobinson Leather Pants
(40230), -- CRobinson Leather Boots
(40231), -- CRobinson Leather Gloves
(40232), -- Test Dazzling Talasite
(40307), -- TEST ARMOR DEATH KNIGHT HELM
(40389), -- Vic's Emergency Diving Helm
(40406), -- Inevitable Defeat
(40407), -- Silent Crusader
(40408), -- Haunting Call
(40409), -- Boots of the Escaped Captive
(40410), -- Shadow of the Ghoul
(40412), -- Ousted Bead Necklace
(40414), -- Shoulderguards of the Undaunted
(40440), -- Brutal Gladiator's Dreadplate Chestpiece
(40441), -- Brutal Gladiator's Dreadplate Gauntlets
(40442), -- Brutal Gladiator's Dreadplate Helm
(40443), -- Brutal Gladiator's Dreadplate Legguards
(40444), -- Brutal Gladiator's Dreadplate Shoulders
(40480), -- Naxxramas 40 Test God Sword
(40481), -- ICECROWN TEST GOD BP
(40484), -- Deprecated Glyph of the White Bear
(40549), -- Boots of the Renewed Flight
(40553), -- Electrified Blade
(40599), -- QA Test Ring +300 Hit Rating
(40650), -- LK ARENA TEST WARRIOR BRACERS 213
(40686), -- U.D.E.D.
(40725), -- Steam-Powered Auctioneer
(40727), -- Gnomish Gravity Well
(40754), -- DEPRECATED Flame Red Ejector Seat
(40762), -- Robinson Test Helm
(40773), -- Master Firestone
(40776), -- Personal Electromagnetic Pulse Generator
(40777), -- Polar Bear Harness
(40832), -- ObsoleteSigil of Pestilential Touch
(40839), -- ObsoleteSigil of the Glorious Mistake
(40948), -- Deprecated Glyph of the Red Lynx
(41091), -- Hand-Mounted Pyro Rocket
(41093), -- Hyperspeed Accelerators
(41111), -- Flexweave Underlay
(41118), -- Nitro Boosts
(41125), -- zzOLD
(41132), -- The Inventor's Disk
(41133), -- Unhatched Mr. Chilly
(41147), -- Barrel o' Fun
(41166), -- Runic Healing Injector
(41169), -- Firestone
(41170), -- Lesser Firestone
(41171), -- Greater Firestone
(41172), -- Major Firestone
(41173), -- Fel Firestone
(41174), -- Grand Firestone
(41178), -- ZX-5103 Mechanical Suit
(41191), -- Spellstone
(41192), -- Greater Spellstone
(41193), -- Major Spellstone
(41194), -- Master Spellstone
(41195), -- Demonic Spellstone
(41196), -- Grand Spellstone
(41342), -- Staff of the Shadow Flame (Purple Enchant)
(41403), -- ZZOLD Design: Insightful Earthsiege Diamond
(41404), -- ZZOLD Design: Bracing Earthsiege Diamond
(41405), -- ZZOLD Design: Eternal Earthsiege Diamond
(41406), -- ZZOLD Design: Powerful Earthsiege Diamond
(41407), -- ZZOLD Design: Relentless Earthsiege Diamond
(41408), -- ZZOLD Design: Austere Earthsiege Diamond
(41409), -- ZZOLD Design: Persistent Earthsiege Diamond
(41410), -- ZZOLD Design: Trenchant Earthsiege Diamond
(41411), -- ZZOLD Design: Invigorating Earthsiege Diamond
(41412), -- ZZOLD Design: Beaming Earthsiege Diamond
(41413), -- ZZOLD Design: Revitalizing Skyflare Diamond
(41414), -- ZZOLD Design: Effulgent Skyflare Diamond
(41415), -- ZZOLD Design: Tireless Skyflare Diamond
(41416), -- ZZOLD Design: Forlorn Skyflare Diamond
(41417), -- ZZOLD Design: Impassive Skyflare Diamond
(41418), -- ZZOLD Design: Chaotic Skyflare Diamond
(41419), -- ZZOLD Design: Destructive Skyflare Diamond
(41420), -- ZZOLD Design: Ember Skyflare Diamond
(41421), -- ZZOLD Design: Enigmatic Skyflare Diamond
(41422), -- ZZOLD Design: Swift Skyflare Diamond
(41423), -- ZZOLDDesign: Thundering Skyflare Diamond
(41585), -- Slag Covered Metal
(41605), -- zzDEPRECATED Sanctified Spellthread
(41606), -- zzDEPRECATED Master's Spellthread
(41749), -- Birmingham Test Item 3
(41750), -- Brunnhildar Harpoon
(41753), -- Brunnhildar Great Axe
(41756), -- Heart's Blood Signet
(41757), -- Vest of Unyielding Companionship
(41758), -- Blood-Bond Helm
(41759), -- Shackles of Perpetual Friendship
(41796), -- Design: Infused Twilight Opal
(41800), -- Deep Sea Monsterbelly
(41801), -- Moonglow Cuttlefish
(41802), -- Imperial Manta Ray
(41803), -- Rockfin Grouper
(41804), -- Icemouth Waveskipper
(41805), -- Borean Man O' War
(41806), -- Musselback Sculpin
(41807), -- Dragonfin Angelfish
(41808), -- Bonescale Snapper
(41809), -- Glacial Salmon
(41810), -- Fangtooth Herring
(41811), -- Meltwater Beardfish
(41812), -- Barrelhead Goby
(41813), -- Nettlefish
(41814), -- Glassfin Minnow
(41900), -- LK Honor 5 Caster DPS Belt
(41911), -- LK Honor 5 Caster DPS Bracers
(41995), -- LK Arena 6 Warlock Helm
(42000), -- LK Arena 6 Warlock Chest
(42007), -- LK Arena 6 Warlock Legs
(42013), -- LK Arena 6 Warlock Shoulders
(42019), -- LK Arena 6 Warlock Gloves
(42083), -- LK Honor 5 Caster DPS Crit Cloak
(42147), -- Force Reaction Frost Giants
(42170), -- Silver Brooch
(42171), -- Emerald Brooch
(42174), -- Pattern: Yellow Lumberjack Shirt
(42179), -- Pattern: Green Workman's Shirt
(42180), -- Pattern: Ebonweave
(42181), -- Pattern: Moonshroud
(42182), -- Pattern: Spellweave
(42186), -- Pattern: Frostweave Bag
(42189), -- Pattern: Wispcloak
(42190), -- Pattern: Deathchill Cloak
(42191), -- Pattern: Hat of Wintry Doom
(42192), -- Pattern: Silky Iceshard Boots
(42193), -- Pattern: Glacial Cord
(42194), -- Pattern: Frostmoon Pants
(42195), -- Pattern: Light Blessed Mittens
(42196), -- Pattern: Aurora Slippers
(42197), -- Pattern: Moonshroud Robe
(42198), -- Pattern: Moonshroud Gloves
(42199), -- Pattern: Ebonweave Robe
(42200), -- Pattern: Ebonweave Gloves
(42201), -- Pattern: Spellweave Robe
(42202), -- Pattern: Spellweave Gloves
(42206), -- Savage Gladiator's Cleaver
(42207), -- Hateful Gladiator's Cleaver
(42212), -- Savage Gladiator's Chopper
(42213), -- Savage Gladiator's Hacker
(42214), -- Savage Gladiator's Waraxe
(42215), -- Savage Gladiator's Mutilator
(42216), -- Savage Gladiator's Shanker
(42217), -- Savage Gladiator's Shiv
(42218), -- Savage Gladiator's Right Ripper
(42219), -- Savage Gladiator's Left Render
(42220), -- Savage Gladiator's Left Ripper
(42221), -- Savage Gladiator's Bonecracker
(42222), -- Savage Gladiator's Pummeler
(42223), -- Savage Gladiator's Quickblade
(42224), -- Savage Gladiator's Slicer
(42226), -- Hateful Gladiator's Hacker
(42231), -- Hateful Gladiator's Chopper
(42236), -- Hateful Gladiator's Waraxe
(42238), -- Furious Gladiator's Waraxe
(42241), -- Hateful Gladiator's Shanker
(42254), -- Hateful Gladiator's Mutilator
(42259), -- Hateful Gladiator's Right Ripper
(42264), -- Hateful Gladiator's Left Render
(42269), -- Hateful Gladiator's Left Ripper
(42274), -- Hateful Gladiator's Pummeler
(42279), -- Hateful Gladiator's Bonecracker
(42284), -- Hateful Gladiator's Slicer
(42289), -- Hateful Gladiator's Quickblade
(42294), -- Savage Gladiator's Decapitator
(42295), -- Savage Gladiator's Bonegrinder
(42296), -- Savage Gladiator's Pike
(42297), -- Savage Gladiator's Greatsword
(42316), -- Hateful Gladiator's Decapitator
(42321), -- Hateful Gladiator's Bonegrinder
(42326), -- Hateful Gladiator's Pike
(42331), -- Hateful Gladiator's Greatsword
(42342), -- Bag of Popcorn
(42343), -- Savage Gladiator's Spellblade
(42344), -- Savage Gladiator's Gavel
(42345), -- Hateful Gladiator's Spellblade
(42350), -- Bag of Peanuts
(42351), -- Hateful Gladiator's Gavel
(42356), -- Savage Gladiator's Battle Staff
(42359), -- Hateful Gladiator's Battle Staff
(42381), -- Anguish Ale
(42382), -- Savage Gladiator's Energy Staff
(42383), -- Hateful Gladiator's Energy Staff
(42388), -- Savage Gladiator's Staff
(42389), -- Hateful Gladiator's Staff
(42425), -- Strand of the Ancients Mark of Honor
(42432), -- Berry Pie Slice
(42433), -- Chocolate Cake Slice
(42434), -- Lovely Cake Slice
(42440), -- Gigaflux Dimensional Transporter
(42444), -- Savage Gladiator's War Edge
(42445), -- Savage Gladiator's Longbow
(42446), -- Savage Gladiator's Heavy Crossbow
(42447), -- Savage Gladiator's Rifle
(42448), -- Savage Gladiator's Touch of Defeat
(42449), -- Hateful Gladiator's War Edge
(42474), -- Glyph of Arcane Explosion
(42484), -- Hateful Gladiator's Rifle
(42489), -- Hateful Gladiator's Longbow
(42494), -- Hateful Gladiator's Heavy Crossbow
(42501), -- Hateful Gladiator's Touch of Defeat
(42511), -- Savage Gladiator's Baton of Light
(42512), -- Hateful Gladiator's Baton of Light
(42517), -- Savage Gladiator's Piercing Touch
(42518), -- Hateful Gladiator's Piercing Touch
(42523), -- Savage Gladiator's Endgame
(42524), -- Hateful Gladiator's Endgame
(42529), -- Savage Gladiator's Reprieve
(42530), -- Hateful Gladiator's Reprieve
(42535), -- Savage Gladiator's Grimoire
(42536), -- Hateful Gladiator's Grimoire
(42545), -- Runic Mana Injector
(42556), -- Savage Gladiator's Shield Wall
(42557), -- Savage Gladiator's Barrier
(42558), -- Hateful Gladiator's Shield Wall
(42563), -- Hateful Gladiator's Barrier
(42568), -- Savage Gladiator's Redoubt
(42569), -- Hateful Gladiator's Redoubt
(42574), -- Savage Gladiator's Idol of Resolve
(42575), -- Savage Gladiator's Idol of Steadfastness
(42576), -- Savage Gladiator's Idol of Tenacity
(42577), -- Hateful Gladiator's Idol of Tenacity
(42582), -- Hateful Gladiator's Idol of Steadfastness
(42587), -- Hateful Gladiator's Idol of Resolve
(42590), -- TEST FRUITCAKE
(42593), -- Savage Gladiator's Totem of Indomitability
(42594), -- Savage Gladiator's Totem of Survival
(42595), -- Savage Gladiator's Totem of the Third Wind
(42596), -- Hateful Gladiator's Totem of the Third Wind
(42601), -- Hateful Gladiator's Totem of Survival
(42606), -- Hateful Gladiator's Totem of Indomitability
(42611), -- Savage Gladiator's Libram of Fortitude
(42612), -- Savage Gladiator's Libram of Justice
(42613), -- Hateful Gladiator's Libram of Justice
(42618), -- Savage Gladiator's Sigil of Strife
(42619), -- Hateful Gladiator's Sigil of Strife
(42625), -- Merciless Gladiator's Plate Chestpiece
(42626), -- Merciless Gladiator's Plate Gauntlets
(42627), -- Merciless Gladiator's Plate Helm
(42628), -- Merciless Gladiator's Plate Legguards
(42629), -- Merciless Gladiator's Plate Shoulders
(42630), -- Gladiator's Scaled Chestpiece
(42631), -- Gladiator's Scaled Gauntlets
(42632), -- Gladiator's Scaled Helm
(42633), -- Gladiator's Scaled Legguards
(42634), -- Gladiator's Scaled Shoulders
(42635), -- Gladiator's Ornamented Chestguard
(42636), -- Gladiator's Ornamented Gloves
(42637), -- Gladiator's Ornamented Headcover
(42638), -- Gladiator's Ornamented Legplates
(42639), -- Gladiator's Ornamented Spaulders
(42654), -- Hateful Gladiator's Dreadplate Chestpiece
(42655), -- Hateful Gladiator's Dreadplate Gauntlets
(42656), -- Hateful Gladiator's Dreadplate Helm
(42657), -- Hateful Gladiator's Dreadplate Legguards
(42658), -- Hateful Gladiator's Dreadplate Shoulders
(42659), -- Merciless Gladiator's Mail Armor
(42660), -- Merciless Gladiator's Mail Gauntlets
(42661), -- Merciless Gladiator's Mail Helm
(42662), -- Merciless Gladiator's Mail Leggings
(42663), -- Merciless Gladiator's Mail Spaulders
(42664), -- Vengeful Gladiator's Ringmail Armor
(42665), -- Vengeful Gladiator's Ringmail Gauntlets
(42666), -- Vengeful Gladiator's Ringmail Helm
(42667), -- Vengeful Gladiator's Ringmail Leggings
(42668), -- Vengeful Gladiator's Ringmail Spaulders
(42669), -- Gladiator's Linked Armor
(42670), -- Gladiator's Linked Gauntlets
(42671), -- Gladiator's Linked Helm
(42672), -- Gladiator's Linked Leggings
(42673), -- Gladiator's Linked Spaulders
(42674), -- Gladiator's Chain Armor
(42675), -- Gladiator's Chain Gauntlets
(42676), -- Gladiator's Chain Helm
(42677), -- Gladiator's Chain Leggings
(42678), -- Gladiator's Chain Spaulders
(42680), -- Gladiator's Kodohide Gloves
(42681), -- Gladiator's Kodohide Helm
(42682), -- Gladiator's Kodohide Legguards
(42683), -- Gladiator's Kodohide Spaulders
(42684), -- Gladiator's Kodohide Tunic
(42685), -- Gladiator's Wyrmhide Gloves
(42686), -- Gladiator's Wyrmhide Helm
(42687), -- Gladiator's Wyrmhide Legguards
(42688), -- Gladiator's Wyrmhide Spaulders
(42689), -- Gladiator's Wyrmhide Tunic
(42690), -- Merciless Gladiator's Leather Gloves
(42691), -- Merciless Gladiator's Leather Helm
(42692), -- Merciless Gladiator's Leather Legguards
(42693), -- Merciless Gladiator's Leather Spaulders
(42694), -- Merciless Gladiator's Leather Tunic
(42695), -- Merciless Gladiator's Leather Gloves
(42696), -- Merciless Gladiator's Leather Helm
(42697), -- Merciless Gladiator's Leather Legguards
(42698), -- Merciless Gladiator's Leather Spaulders
(42699), -- Merciless Gladiator's Leather Tunic
(42703), -- Gladiator's Mooncloth Gloves
(42704), -- Gladiator's Mooncloth Hood
(42705), -- Gladiator's Mooncloth Leggings
(42706), -- Gladiator's Mooncloth Mantle
(42707), -- Gladiator's Mooncloth Robe
(42708), -- Gladiator's Satin Gloves
(42709), -- Gladiator's Satin Hood
(42710), -- Gladiator's Satin Leggings
(42711), -- Gladiator's Satin Mantle
(42712), -- Gladiator's Satin Robe
(42713), -- Gladiator's Silk Amice
(42714), -- Gladiator's Silk Cowl
(42715), -- Gladiator's Silk Handguards
(42716), -- Gladiator's Silk Raiment
(42717), -- Gladiator's Silk Trousers
(42718), -- Gladiator's Felweave Amice
(42719), -- Gladiator's Felweave Cowl
(42720), -- Gladiator's Felweave Handguards
(42721), -- Gladiator's Felweave Raiment
(42722), -- Gladiator's Felweave Trousers
(42733), -- Icemaw Bear Flank
(42755), -- Monster - Staff, Xarantaur's Staff
(42776), -- Monster - Gun, PvP Alliance
(42851), -- Hateful Gladiator's Libram of Fortitude
(42875), -- Worg-Hide Pants
(42885), -- Mountaineer's Helm
(42886), -- Gloves of the Howling Peaks
(42894), -- Horn of Elemental Fury
(42940), -- Monster - Mace, Zul'aman 1H - D02 Blue
(42953), -- Strange Envelope
(42975), -- Ace of Lords
(42976), -- Lords Deck
(42977), -- Two of Lords
(42978), -- Three of Lords
(42979), -- Four of Lords
(42980), -- Five of Lords
(42981), -- Six of Lords
(42982), -- Seven of Lords
(42983), -- Eight of Lords
(42986), -- The RP-GG
(43002), -- Inflatable Land Mines
(43003), -- Marcus's Special Coin [PH]
(43006), -- Emerald Acorn
(43038), -- The Naked Bomb
(43069), -- Blessed Breastplate of Undead Slaying
(43071), -- Blessed Legplates of Undead Slaying
(43072), -- Blessed Robe of Undead Cleansing
(43075), -- Blessed Trousers of Undead Cleansing
(43076), -- Blessed Tunic of Undead Slaying
(43079), -- Blessed Leggings of Undead Slaying
(43080), -- Blessed Hauberk of Undead Slaying
(43083), -- Blessed Greaves of Undead Slaying
(43087), -- Crisp Dalaran Apple
(43093), -- Monster - Staff, Dalaran
(43097), -- Fur Lining - Attack Power
(43099), -- Infused Mushroom Meatloaf
(43103), -- Verdant Pigment
(43104), -- Burnt Pigment
(43105), -- Indigo Pigment
(43106), -- Ruby Pigment
(43107), -- Sapphire Pigment
(43108), -- Ebon Pigment
(43109), -- Icy Pigment
(43136), -- Wine and Cheese Platter
(43144), -- Mustard Dog Basket!
(43149), -- Vegetable Stew
(43150), -- Defense Control Crystal
(43215), -- Ichor-Stained Cloth
(43267), -- Monster - Sword, Iblis (Back-Sheath)
(43269), -- Blood Jade Amulet
(43270), -- Glowing Ivory Figurine
(43272), -- Wicked Sun Brooch
(43274), -- Intricate Bone Figurine
(43275), -- Bright Armor Relic
(43276), -- Shifting Sun Curio
(43288), -- Smelted Metal Bar
(43298), -- Beautiful Chalcedony Necklace
(43302), -- Inscription of High Discipline
(43303), -- Inscription of the Frostblade
(43304), -- Inscription of Kings
(43307), -- Arena Points
(43308), -- Honor Points
(43321), -- Crystallized Tear
(43325), -- Frozen Eyelash
(43326), -- Tusk Warmer
(43328), -- Extinguished Light of Hope
(43329), -- Pigtail Holder
(43330), -- Broken U.L.O.S.E Button
(43333), -- Empty Hippogryph Harness
(43336), -- Deprecated Glyph of the Black Bear
(43337), -- Deprecated Glyph of the Forest Lynx
(43341), -- Unwarmed Shoes
(43362), -- Glyph of the Bear Cub
(43384), -- Deprecated Glyph of the Black Wolf
(43460), -- Giantmaim Girdle
(43468), -- Scroll of Protection VIII
(43471), -- Rork Red Ribbon
(43475), -- Grips of the Chilling Revenant
(43476), -- Trollwoven Breastplate
(43486), -- Mohawk Mask
(43489), -- Mohawk Grenade
(43493), -- Watcher's Corpse Dust
(43517), -- Penguin Egg
(43518), -- Conjured Mana Pie
(43523), -- Conjured Mana Strudel
(43557), -- Poisonous Ivy Berries
(43558), -- Nightbloom Lilac
(43559), -- Locust Wing
(43560), -- Firefly Dust
(43561), -- Iridescent Pollen
(43562), -- Nightmare Berries
(43563), -- Frozen Beetle Husk
(43571), -- Sewer Carp
(43572), -- Magic Eater
(43576), -- Chitin Polish
(43577), -- Carapace Cleanser
(43611), -- Krol Cleaver
(43612), -- Spineslicer
(43613), -- The Dusk Blade
(43614), -- Broken Wrath Elixir
(43617), -- Monster - Staff, Dalaran Blue
(43618), -- Monster - Staff, Dalaran Green
(43619), -- Monster - Staff, Dalaran Red
(43620), -- Broken Spellpower Elixir
(43621), -- Broken Noggenfogger Elixir
(43627), -- Thrall's Gold Coin
(43628), -- Lady Jaina Proudmoore's Gold Coin
(43629), -- Uther Lightbringer's Gold Coin
(43630), -- Tirion Fordring's Gold Coin
(43631), -- Teron's Gold Coin
(43632), -- Sylvanas Windrunner's Gold Coin
(43633), -- Prince Kael'thas Sunstrider's Gold Coin
(43634), -- Lady Katrana Prestor's Gold Coin
(43635), -- Kel'Thuzad's Gold Coin
(43636), -- Chromie's Gold Coin
(43637), -- Brann Bronzebeard's Gold Coin
(43638), -- Arugal's Gold Coin
(43639), -- Arthas' Gold Coin
(43640), -- Archimonde's Gold Coin
(43641), -- Anduin Wrynn's Gold Coin
(43643), -- Prince Magni Bronzebeard's Silver Coin
(43644), -- A Peasant's Silver Coin
(43645), -- Bent Fishing Hook
(43646), -- Fountain Goldfish
(43647), -- Shimmering Minnow
(43648), -- RESILIENCE TEST RING DO NOT LOCALIZE
(43650), -- Rusty Prison Key
(43651), -- Crafty's Pole
(43652), -- Slippery Eel
(43653), -- Partially Eaten Fish
(43658), -- Partially Rusted File
(43659), -- Bloodied Prison Shank
(43675), -- Fandral Staghelm's Silver Coin
(43676), -- Arcanist Doan's Silver Coin
(43677), -- High Tinker Mekkatorque's Silver Coin
(43678), -- Antonidas' Silver Coin
(43679), -- Muradin Bronzebeard's Silver Coin
(43680), -- King Varian Wrynn's Silver Coin
(43681), -- King Terenas Menethil's Silver Coin
(43682), -- King Anasterian Sunstrider's Silver Coin
(43683), -- Khadgar's Silver Coin
(43684), -- Medivh's Silver Coin
(43685), -- Maiev Shadowsong's Silver Coin
(43686), -- Alleria's Silver Coin
(43687), -- Aegwynn's Silver Coin
(43694), -- Drowned Rat
(43695), -- Half Full Bottle of Prison Moonshine
(43698), -- Giant Sewer Rat
(43701), -- A Footman's Copper Coin
(43702), -- Alonsus Faol's Copper Coin
(43703), -- Ansirem's Copper Coin
(43704), -- Attumen's Copper Coin
(43705), -- Danath's Copper Coin
(43706), -- Dornaa's Shiny Copper Coin
(43707), -- Eitrigg's Copper Coin
(43708), -- Elling Trias' Copper Coin
(43709), -- Falstad Wildhammer's Copper Coin
(43710), -- Genn's Copper Coin
(43711), -- Inigo's Copper Coin
(43712), -- Krasus' Copper Coin
(43713), -- Kryll's Copper Coin
(43714), -- Landro Longshot's Copper Coin
(43715), -- Molok's Copper Coin
(43716), -- Murky's Copper Coin
(43717), -- Princess Calia Menethil's Copper Coin
(43718), -- Private Marcus Jonathan's Copper Coin
(43719), -- Salandria's Shiny Copper Coin
(43720), -- Squire Rowe's Copper Coin
(43721), -- Stalvan's Copper Coin
(43722), -- Vareesa's Copper Coin
(43723), -- Vargoth's Copper Coin
(43727), -- Valorous Bonescythe Breastplate
(43728), -- Valorous Bonescythe Gauntlets
(43729), -- Valorous Bonescythe Helmet
(43730), -- Valorous Bonescythe Legplates
(43731), -- Valorous Bonescythe Pauldrons
(43732), -- Heroes' Circlet of Faith
(43733), -- Crown of Faith
(43734), -- Heroes' Cryptstalker Handguards
(43735), -- Heroes' Cryptstalker Headpiece
(43736), -- Heroes' Cryptstalker Legguards
(43737), -- Heroes' Cryptstalker Spaulders
(43738), -- Heroes' Cryptstalker Tunic
(43739), -- Dreadnaught Battleplate
(43740), -- Heroes' Dreadnaught Breastplate
(43741), -- Dreadnaught Gauntlets
(43742), -- Heroes' Dreadnaught Greathelm
(43743), -- Heroes' Dreadnaught Gauntlets
(43744), -- Dreadnaught Helmet
(43745), -- Heroes' Dreadnaught Legguards
(43746), -- Dreadnaught Legplates
(43747), -- Heroes' Dreadnaught Pauldrons
(43748), -- Dreadnaught Shoulderplates
(43749), -- Heroes' Dreamwalker Headpiece
(43750), -- Heroes' Dreamwalker Handguards
(43751), -- Heroes' Dreamwalker Handguards
(43752), -- Heroes' Dreamwalker Handguards
(43753), -- Heroes' Dreamwalker Headpiece
(43754), -- Heroes' Dreamwalker Headpiece
(43755), -- Heroes' Dreamwalker Leggings
(43756), -- Heroes' Dreamwalker Leggings
(43757), -- Heroes' Dreamwalker Spaulders
(43758), -- Heroes' Dreamwalker Spaulders
(43759), -- Heroes' Dreamwalker Spaulders
(43760), -- Heroes' Dreamwalker Leggings
(43761), -- Heroes' Dreamwalker Robe
(43762), -- Earthshatter Chestguard
(43763), -- Heroes' Earthshatter Helm
(43764), -- Heroes' Earthshatter Gloves
(43765), -- Heroes' Earthshatter Gloves
(43766), -- Heroes' Earthshatter Gloves
(43767), -- Earthshatter Hauberk
(43768), -- Heroes' Earthshatter Headpiece
(43769), -- Heroes' Earthshatter Helm
(43770), -- Heroes' Earthshatter Kilt
(43771), -- Heroes' Earthshatter Legguards
(43772), -- Heroes' Earthshatter Spaulders
(43773), -- Heroes' Earthshatter Shoulderpads
(43774), -- Heroes' Earthshatter Shoulderguards
(43775), -- Heroes' Earthshatter Chestguard
(43776), -- Earthshatter War-Kilt
(43777), -- Frostfire Circlet
(43778), -- Heroes' Frostfire Gloves
(43779), -- Heroes' Frostfire Leggings
(43780), -- Heroes' Frostfire Robe
(43781), -- Heroes' Frostfire Shoulderpads
(43782), -- Gloves of Faith
(43783), -- Heroes' Handwraps of Faith
(43784), -- Leggings of Faith
(43785), -- Heroes' Mantle of Faith
(43786), -- Heroes' Pants of Faith
(43787), -- Heroes' Plagueheart Circlet
(43788), -- Heroes' Plagueheart Gloves
(43789), -- Heroes' Plagueheart Leggings
(43790), -- Heroes' Plagueheart Robe
(43791), -- Heroes' Plagueheart Shoulderpads
(43792), -- Heroes' Raiments of Faith
(43793), -- Heroes' Redemption Breastplate
(43794), -- Heroes' Redemption Chestpiece
(43795), -- Heroes' Redemption Faceguard
(43796), -- Heroes' Redemption Gauntlets
(43797), -- Redemption Gloves
(43798), -- Redemption Greaves
(43799), -- Heroes' Redemption Handguards
(43800), -- Redemption Headpiece
(43801), -- Heroes' Redemption Helm
(43802), -- Heroes' Redemption Legguards
(43803), -- Heroes' Redemption Legplates
(43804), -- Heroes' Redemption Shoulderguards
(43805), -- Heroes' Redemption Shoulderplates
(43806), -- Redemption Spaulders
(43807), -- Redemption Tunic
(43808), -- Robe of Faith
(43809), -- Heroes' Scourgeborne Battleplate
(43810), -- Shoulderpads of Faith
(43811), -- Heroes' Scourgeborne Chestguard
(43812), -- Heroes' Scourgeborne Faceguard
(43813), -- Heroes' Scourgeborne Gauntlets
(43814), -- Heroes' Scourgeborne Handguards
(43815), -- Heroes' Scourgeborne Helmet
(43816), -- Heroes' Scourgeborne Legguards
(43817), -- Heroes' Scourgeborne Legplates
(43818), -- Heroes' Scourgeborne Pauldrons
(43819), -- Heroes' Scourgeborne Shoulderplates
(43820), -- Heroes' Dreamwalker Robe
(43822), -- Heroes' Dreamwalker Robe
(43848), -- Bracers of Icy Resolve
(43878), -- Mantle of Unholy Power
(43895), -- Leggings of Silent Echoes
(43922), -- Honed Lightblade
(43936), -- Battlesurgeon's Gauntlets
(43938), -- Belt of Rising Hope
(43949), -- zzzOLDDaily Quest Faction Token
(43963), -- Reins of the Brown Polar Bear
(43964), -- Reins of the Black Polar Bear
(44090), -- Test Mail Shoulder 2
(44148), -- Mages Deck
(44158), -- Demons Deck
(44164), -- Reins of the Black Proto-Drake
(44175), -- Reins of the Plagued Proto-Drake
(44191), -- Ice-Rimed Chopper
(44221), -- Loaned Gryphon Reins
(44229), -- Loaned Wind Rider Reins
(44236), -- Monster - Item, Harpoon (2H)
(44260), -- Ace of Prisms
(44261), -- Two of Prisms
(44262), -- Three of Prisms
(44263), -- Four of Prisms
(44264), -- Five of Prisms
(44265), -- Six of Prisms
(44266), -- Seven of Prisms
(44267), -- Eight of Prisms
(44268), -- Ace of Nobles
(44269), -- Two of Nobles
(44270), -- Three of Nobles
(44271), -- Four of Nobles
(44272), -- Five of Nobles
(44273), -- Six of Nobles
(44274), -- Seven of Nobles
(44275), -- Eight of Nobles
(44277), -- Ace of Chaos
(44278), -- Two of Chaos
(44279), -- Three of Chaos
(44280), -- Four of Chaos
(44281), -- Five of Chaos
(44282), -- Six of Chaos
(44284), -- Seven of Chaos
(44285), -- Eight of Chaos
(44286), -- Ace of Undeath
(44287), -- Two of Undeath
(44288), -- Three of Undeath
(44289), -- Four of Undeath
(44290), -- Five of Undeath
(44291), -- Six of Undeath
(44292), -- Seven of Undeath
(44293), -- Eight of Undeath
(44298), -- Brightly Hued Egg
(44299), -- Crinkly Grass
(44300), -- Smashed Basket
(44304), -- Writhing Mass
(44310), -- Namlak's Supernumerary Sticker
(44311), -- Avool's Sword of Jin
(44333), -- Ghostcrawler's Greaves
(44391), -- Cast Steel Choker
(44392), -- Necklace of Permeation
(44415), -- Savage Gladiator's War Staff
(44416), -- Savage Gladiator's Focus Staff
(44417), -- Hateful Gladiator's War Staff
(44418), -- Hateful Gladiator's Focus Staff
(44428), -- Dark Frostscale Chestpiece
(44432), -- Glyph of Raise Dead
(44434), -- Dark Matter
(44462), -- Cult of the Damned Thesis
(44475), -- Reinforced Crate
(44480), -- Alumeth's Remains
(44505), -- Dustbringer
(44506), -- Saronite Arrow Maker
(44507), -- Ultrasafe Bullet Machine
(44508), -- Discovery!
(44555), -- Swift Mooncloth Carpet
(44556), -- Swift Spellfire Carpet
(44557), -- Swift Ebonweave Carpet
(44563), -- Pattern: Fur Lining - Arcane Resist
(44578), -- Ruined Herbs
(44580), -- Potion Goo
(44598), -- Shrapnel Grenade
(44600), -- Tome of Polymorph: Serpent
(44604), -- Borrowed Broom
(44607), -- Aged Dalaran Sharp
(44608), -- Dalaran Swiss
(44609), -- Fresh Dalaran Bread Slice
(44619), -- Glass of Peaked Dalaran Red
(44620), -- Glass of Vintage Dalaran Red
(44627), -- Bottle of Peaked Dalaran Red
(44629), -- Cask of Peaked Dalaran Red
(44646), -- Dalaran Bandage
(44656), -- Cultist Acolyte Robes
(44680), -- Assorted Writings
(44703), -- Dark Herring
(44705), -- Monster - Sword - 1H, King Varian Wrynn
(44718), -- Ripe Disgusting Jar
(44728), -- Endless Rejuvenation Potion
(44743), -- Cultist Acolyte's Hood Target
(44755), -- Gory Snout
(44760), -- Rippling Fur
(44761), -- Ancient Horn
(44807), -- Indalamar's Holy Hand Grenade
(44811), -- Tome of Polymorph: Turkey
(44817), -- The Mischief Maker
(44832), -- Squirt Gun [PH]
(44833), -- Empty Squirt Gun [PH]
(44849), -- Tiny Green Ragdoll
(44851), -- Thanksgiving Cookbook
(44852), -- Cornmeal
(44856), -- Turkey Parts
(44866), -- Faithful Mule
(44869), -- Frenzyheart Insignia of Fury
(44870), -- Oracle Talisman of Ablution
(44871), -- Greater Inscription of the Axe
(44872), -- Greater Inscription of the Crag
(44873), -- Greater Inscription of the Pinnacle
(44874), -- Greater Inscription of the Storm
(44875), -- Arcanum of the Savage Gladiator
(44876), -- Arcanum of Blissful Mending
(44877), -- Arcanum of Burning Mysteries
(44878), -- Arcanum of the Stalwart Protector
(44879), -- Arcanum of Torment
(44880), -- Arcanum of the Flame's Soul
(44881), -- Arcanum of the Eclipsed Moon
(44882), -- Arcanum of the Fleeing Shadow
(44883), -- Arcanum of Toxic Warding
(44884), -- Arcanum of the Frosty Soul
(44915), -- Elune's Candle
(44924), -- Arcanite Ripper (NEW)
(44926), -- Titansteel Deflector
(44945), -- Formula: Enchant Weapon - Titanguard
(44948), -- Titansteel Defender
(44972), -- Alarming Clockbot (NOT IN USE)
(44981), -- Ashwood Brand
(44988), -- Seal of Ironforge
(44989), -- Seal of Gnomeregan
(44991), -- Seal of the Exodar
(44992), -- Seal of Orgrimmar
(44993), -- Seal of Sen'jin
(44994), -- Seal of Thunder Bluff
(44996), -- Seal of Silvermoon
(44997), -- Seal of the Forsaken
(45003), -- Winter's Edge
(45006), -- Jillian's Tonic of Endless Rage
(45007), -- Jillian's Tonic of Pure Mojo
(45008), -- Jillian's Tonic of Stoneblood
(45009), -- Jillian's Tonic of the Frost Wyrm
(45024), -- QATest +1500 Spell Dmg Ring
(45026), -- [PH] Bridle of the Charger
(45028), -- [PH] Bridle of the Ram
(45029), -- [PH] Bridle of the Mechanostrider
(45030), -- [PH] Bridle of the Elekk
(45031), -- [PH] Bridle of the Nightsaber
(45032), -- [PH] Bridle of the Wolf
(45033), -- [PH] Bridle of the Raptor
(45034), -- [PH] Bridle of the Kodo
(45035), -- [PH] Bridle of the Hawkstrider
(45036), -- [PH] Bridle of the Warhorse
(45037), -- Epic Purple Shirt
(45045), -- Rough Hewn Plank
(45049), -- Jousting Lance [PH]
(45050), -- Formula: Smoking Heart of the Mountain
(45052), -- Gruffscale Leggings
(45061), -- Foam Sword
(45063), -- Foam Sword Rack
(45082), -- Murderer's Toolkit
(45120), -- Basic Fishing Pole
(45126), -- Trusty Mount [PH]
(45127), -- Mark of the Valiant
(45172), -- QA Test Normalized Dagger
(45173), -- QA Test Normalized One-Hander
(45174), -- QA Test Normalized Two-Hander
(45175), -- QA Test Normalized Ranged Weapon
(45176), -- Foam Sword
(45177), -- Foam Sword
(45178), -- Foam Sword
(45179), -- Foam Sword
(45180), -- Murkimus' Little Spear
(45188), -- Withered Kelp
(45189), -- Torn Sail
(45190), -- Driftwood
(45191), -- Empty Clam
(45194), -- Tangled Fishing Line
(45195), -- Empty Rum Bottle
(45196), -- Tattered Cloth
(45197), -- Tree Branch
(45198), -- Weeds
(45199), -- Old Boot
(45200), -- Sickly Fish
(45201), -- Rock
(45202), -- Water Snail
(45229), -- [ph] Mark of the Scourge Boss 01
(45230), -- [ph] Mark of the Scourge Boss 02
(45231), -- [ph] Mark of the Scourge Boss 03
(45276), -- Jillian's Genius Juice
(45277), -- Jillian's Savior Sauce
(45278), -- Small Stone Block
(45279), -- Jillian's Gourmet Fish Feast
(45280), -- Shirt of Uber
(45328), -- Bloated Slippery Eel
(45350), -- Valorous Nightsong Cover
(45455), -- Belt of the Crystal Tree
(45457), -- Staff of Endless Winter
(45459), -- Frigid Strength of Hodir
(45460), -- Bindings of Winter Gale
(45461), -- Drape of Icy Intent
(45462), -- Gloves of the Frozen Glade
(45464), -- Cowl of Icy Breaths
(45500), -- Mark of the Champion
(45538), -- Titanstone Pendant
(45539), -- Pendant of Focused Energies
(45540), -- Bladebearer's Signet
(45541), -- Shroud of Alteration
(45542), -- Greaves of the Stonewarder
(45543), -- Shoulders of Misfortune
(45544), -- Leggings of the Tortured Earth
(45547), -- Relic Hunter's Cord
(45548), -- Belt of the Sleeper
(45549), -- Grips of Chaos
(45568), -- [PH] Bridle of the Argent Charger
(45569), -- [PH] Bridle of the Deathcharger
(45575), -- Test Melee Rifle [PH]
(45605), -- Daschal's Bite
(45629), -- Shadoweave Belt
(45630), -- Invisible Axe
(45705), -- Argent Tournament Invitation
(45728), -- Thalassian Lance [PH]
(45729), -- Raider's Lance [PH]
(45730), -- Forsaken Lance [PH]
(45748), -- Darkspear Lance [PH]
(45749), -- Brave's Lance [PH]
(45750), -- Elekk Lance [PH]
(45751), -- Spring-Loaded Mechano-Lance [PH]
(45752), -- Mountaineer's Lance [PH]
(45754), -- Darnassian Lance [PH]
(45759), -- Cavalry Lance [PH]
(45765), -- Ebon Cavalry Blade [PH]
(45850), -- Rituals of the New Moon
(45851), -- Rituals of the New Moon
(45852), -- Rituals of the New Moon
(45853), -- Rituals of the New Moon
(45860), -- Crystal Tiara
(45863), -- Decayed Treasure Map
(45899), -- Monster - 1H Sword - Varian's Blade
(45900), -- Monster - Mace, Thorim (Ulduar Raid)
(45901), -- Homemade Fish Fry
(45902), -- Phantom Ghostfish
(45903), -- Corroded Jewelry
(45904), -- Terrorfish
(45905), -- Bloodtooth Frenzy
(45907), -- Mostly-eaten Bonescale Snapper
(45908), -- Glyph of Envenom
(45909), -- Giant Darkwater Clam
(45924), -- Certificate of Appreciation
(45942), -- XS-001 Constructor Bot
(46054), -- Journeyman Fishing - Fishing for Dummies
(46055), -- Grand Master Fishing - Deep Sea Adventures
(46069), -- Alliance Lance
(46070), -- Horde Lance
(46101), -- Blue Skeletal Warhorse
(46103), -- Shirt of Titanic Scaling
(46104), -- Shirt of the Yogg-Slayer
(46105), -- Shirt of the Future Champion
(46106), -- Argent Lance
(46213), -- Valorous Aegis Tunic
(46214), -- Conqueror's Aegis Battleplate
(46215), -- Conqueror's Aegis Helm
(46216), -- Valorous Aegis Gloves
(46217), -- Conqueror's Aegis Gauntlets
(46218), -- Conqueror's Aegis Legplates
(46219), -- Conqueror's Aegis Gauntlets
(46220), -- Conqueror's Aegis Helm
(46221), -- Valorous Aegis Headpiece
(46222), -- Conqueror's Aegis Legplates
(46223), -- Aegis Legguards
(46224), -- Valorous Aegis Greaves
(46225), -- Conqueror's Aegis Shoulderplates
(46226), -- Valorous Aegis Spaulders
(46227), -- Conqueror's Aegis Shoulderplates
(46228), -- Conqueror's Aegis Battleplate
(46230), -- Conqueror's Circlet of Sanctification
(46231), -- Valorous Cowl of Sanctification
(46232), -- Conqueror's Darkruned Battleplate
(46233), -- Conqueror's Darkruned Chestguard
(46234), -- Conqueror's Darkruned Faceguard
(46235), -- Conqueror's Darkruned Gauntlets
(46236), -- Conqueror's Darkruned Handguards
(46237), -- Conqueror's Darkruned Helmet
(46238), -- Conqueror's Darkruned Legguards
(46239), -- Conqueror's Darkruned Legplates
(46240), -- Conqueror's Darkruned Pauldrons
(46241), -- Conqueror's Darkruned Shoulderplates
(46242), -- Conqueror's Deathbringer Gloves
(46243), -- Conqueror's Deathbringer Hood
(46244), -- Conqueror's Deathbringer Leggings
(46245), -- Conqueror's Deathbringer Robe
(46246), -- Conqueror's Deathbringer Shoulderpads
(46247), -- Valorous Gloves of Sanctification
(46248), -- Conqueror's Gloves of Sanctification
(46249), -- Valorous Kirin Tor Gauntlets
(46250), -- Valorous Kirin Tor Hood
(46251), -- Valorous Kirin Tor Leggings
(46252), -- Valorous Kirin Tor Shoulderpads
(46253), -- Valorous Kirin Tor Tunic
(46254), -- Valorous Leggings of Sanctification
(46255), -- Conqueror's Shoulderpads of Sanctification
(46256), -- Conqueror's Leggings of Sanctification
(46257), -- Conqueror's Robe of Sanctification
(46258), -- Valorous Robe of Sanctification
(46259), -- Valorous Shoulderpads of Sanctification
(46260), -- Valorous Nightsong Handgrips
(46261), -- Valorous Nightsong Handguards
(46262), -- Valorous Nightsong Headguard
(46263), -- Valorous Nightsong Headpiece
(46264), -- Valorous Nightsong Leggings
(46265), -- Valorous Nightsong Legguards
(46266), -- Valorous Nightsong Mantle
(46267), -- Valorous Nightsong Raiments
(46268), -- Valorous Nightsong Robe
(46269), -- Valorous Nightsong Shoulderpads
(46270), -- Valorous Nightsong Spaulders
(46271), -- Valorous Nightsong Trousers
(46272), -- Valorous Nightsong Vestments
(46273), -- Conqueror's Scourgestalker Handguards
(46274), -- Conqueror's Scourgestalker Headpiece
(46275), -- Conqueror's Scourgestalker Legguards
(46276), -- Conqueror's Scourgestalker Spaulders
(46277), -- Conqueror's Scourgestalker Tunic
(46278), -- Valorous Siegebreaker Battleplate
(46279), -- Valorous Siegebreaker Breastplate
(46280), -- Valorous Siegebreaker Gauntlets
(46281), -- Valorous Siegebreaker Greathelm
(46282), -- Valorous Siegebreaker Helmet
(46283), -- Valorous Siegebreaker Gauntlets
(46284), -- Valorous Siegebreaker Legplates
(46285), -- Valorous Siegebreaker Legplates
(46286), -- Valorous Siegebreaker Shoulderplates
(46287), -- Valorous Siegebreaker Pauldrons
(46288), -- Conqueror's Terrorblade Breastplate
(46289), -- Conqueror's Terrorblade Gauntlets
(46290), -- Conqueror's Terrorblade Helmet
(46291), -- Conqueror's Terrorblade Legplates
(46292), -- Conqueror's Terrorblade Pauldrons
(46293), -- Conqueror's Worldbreaker Chestguard
(46294), -- Conqueror's Worldbreaker Faceguard
(46295), -- Conqueror's Worldbreaker Grips
(46296), -- Conqueror's Worldbreaker Grips
(46297), -- Conqueror's Worldbreaker Handguards
(46298), -- Conqueror's Worldbreaker Tunic
(46299), -- Conqueror's Worldbreaker Headpiece
(46300), -- Conqueror's Worldbreaker Headpiece
(46301), -- Conqueror's Worldbreaker Legguards
(46302), -- Conqueror's Worldbreaker Legguards
(46303), -- Conqueror's Worldbreaker Spaulders
(46304), -- Conqueror's Worldbreaker Spaulders
(46305), -- Conqueror's Worldbreaker Spaulders
(46306), -- Conqueror's Worldbreaker Tunic
(46307), -- Conqueror's Worldbreaker Kilt
(46309), -- Valorous Nightsong Gloves
(46319), -- Tournament Brew
(46331), -- Conqueror's Terrorblade Boots
(46339), -- Mimiron's Repeater
(46340), -- Adamant Handguards
(46341), -- Drape of the Spellweaver
(46342), -- Golemheart Longbow
(46343), -- Fervor of the Protectorate
(46344), -- Iceshear Mantle
(46345), -- Bracers of Righteous Reformation
(46346), -- Boots of Unsettled Prey
(46347), -- Cloak of the Dormant Blaze
(46350), -- Pillar of Fortitude
(46351), -- Bloodcrush Cudgel
(46395), -- Unlucky Rabbit's Foot
(46399), -- Thunder's Plunder
(46400), -- Barleybrew Gold
(46401), -- Crimson Stripe
(46402), -- Promise of the Pandaren
(46403), -- Chuganpug's Delight
(46709), -- MiniZep Controller
(46735), -- Synthebrew Goggles
(46765), -- Blue War Fuel
(46766), -- Red War Fuel
(46767), -- Warbot Ignition Key
(46778), -- Magic Rooster Egg
(46780), -- Ogre Pinata
(46783), -- Pink Gumball
(46802), -- Heavy Murloc Egg
(46830), -- Save the Orphans Action Alert
(46847), -- Seaforium Bombs
(46852), -- H17 Ammunition Buddy
(46887), -- Bountiful Feast
(46892), -- Murkimus' Tiny Spear
(46957), -- Monster - Sword, 1H Horde PvP Red
(46978), -- Totem of the Earthen Ring
(47030), -- Huge Seaforium Bombs
(47036), -- Fresh Chum
(47229), -- Girdle of Arrogant Downfall
(47246), -- Writ of Merit
(47395), -- Isle of Conquest Mark of Honor
(47497), -- Helm of the Crestfallen Challenger
(47507), -- Recipe: Flask of the North
(48435), -- Relentless Gladiator's Punisher
(48438), -- Relentless Gladiator's Swiftblade
(48440), -- Relentless Gladiator's Splitter
(48442), -- Relentless Gladiator's Eviscerator
(48444), -- Relentless Gladiator's Left Claw
(48507), -- Relentless Gladiator's Handaxe
(48509), -- Relentless Gladiator's Spike
(48511), -- Relentless Gladiator's Truncheon
(48513), -- Relentless Gladiator's Longblade
(48515), -- Relentless Gladiator's Grasp
(48517), -- Relentless Gladiator's Halberd
(48519), -- Relentless Gladiator's Salvation
(48521), -- Relentless Gladiator's Light Staff
(48523), -- Relentless Gladiator's Greatstaff
(48527), -- Enchanted Onyx
(48601), -- Red Rider Air Rifle Ammo
(48679), -- Waterlogged Recipe
(48725), -- Khadgar's Gauntlets
(48726), -- Khadgar's Hood
(48727), -- Khadgar's Leggings
(48728), -- Khadgar's Robe
(48729), -- Khadgar's Shoulderpads
(48730), -- Sunstrider's Gauntlets
(48731), -- Sunstrider's Hood
(48732), -- Sunstrider's Leggings
(48733), -- Sunstrider's Robe
(48734), -- Sunstrider's Shoulderpads
(48735), -- Gul'dan's Gloves
(48736), -- Gul'dan's Hood
(48737), -- Gul'dan's Leggings
(48738), -- Gul'dan's Robe
(48739), -- Gul'dan's Shoulderpads
(48740), -- Kel'Thuzad's Gloves
(48741), -- Kel'Thuzad's Hood
(48742), -- Kel'Thuzad's Leggings
(48743), -- Kel'Thuzad's Robe
(48744), -- Kel'Thuzad's Shoulderpads
(48745), -- Velen's Cowl
(48746), -- Velen's Gloves
(48747), -- Velen's Leggings
(48748), -- Velen's Robe
(48749), -- Velen's Shoulderpads
(48750), -- Zabra's Cowl
(48751), -- Zabra's Gloves
(48752), -- Zabra's Leggings
(48753), -- Zabra's Robe
(48754), -- Zabra's Shoulderpads
(48755), -- Velen's Circlet
(48756), -- Velen's Handwraps
(48757), -- Velen's Mantle
(48758), -- Velen's Pants
(48759), -- Velen's Raiments
(48760), -- Zabra's Circlet
(48761), -- Zabra's Handwraps
(48762), -- Zabra's Mantle
(48763), -- Zabra's Pants
(48764), -- Zabra's Raiments
(48769), -- Runetotem's Handguards
(48770), -- Runetotem's Headpiece
(48771), -- Runetotem's Leggings
(48772), -- Runetotem's Robe
(48773), -- Runetotem's Spaulders
(48774), -- Malfurion's Handguards
(48775), -- Malfurion's Headpiece
(48776), -- Malfurion's Leggings
(48777), -- Malfurion's Robe
(48778), -- Malfurion's Spaulders
(48781), -- Runetotem's Cover
(48782), -- Runetotem's Gloves
(48783), -- Runetotem's Mantle
(48784), -- Runetotem's Trousers
(48785), -- Runetotem's Vestments
(48786), -- Malfurion's Cover
(48787), -- Malfurion's Gloves
(48788), -- Malfurion's Mantle
(48789), -- Malfurion's Trousers
(48790), -- Malfurion's Vestments
(48794), -- Runetotem's Handgrips
(48795), -- Runetotem's Headguard
(48796), -- Runetotem's Legguards
(48797), -- Runetotem's Raiments
(48798), -- Runetotem's Shoulderpads
(48799), -- Malfurion's Handgrips
(48800), -- Malfurion's Headguard
(48801), -- Malfurion's Legguards
(48802), -- Malfurion's Raiments
(48803), -- Malfurion's Shoulderpads
(48804), -- Garona's Breastplate
(48805), -- Garona's Gauntlets
(48806), -- Garona's Helmet
(48807), -- Garona's Legplates
(48808), -- Garona's Pauldrons
(48809), -- VanCleef's Breastplate
(48810), -- VanCleef's Gauntlets
(48811), -- VanCleef's Helmet
(48812), -- VanCleef's Legplates
(48813), -- VanCleef's Pauldrons
(48814), -- Windrunner's Handguards
(48815), -- Windrunner's Headpiece
(48816), -- Windrunner's Legguards
(48817), -- Windrunner's Spaulders
(48818), -- Windrunner's Tunic
(48819), -- Windrunner's Handguards
(48820), -- Windrunner's Headpiece
(48821), -- Windrunner's Legguards
(48822), -- Windrunner's Spaulders
(48823), -- Windrunner's Tunic
(48824), -- Nobundo's Handguards
(48825), -- Nobundo's Headpiece
(48826), -- Nobundo's Legguards
(48827), -- Nobundo's Spaulders
(48828), -- Nobundo's Tunic
(48829), -- Thrall's Handguards
(48830), -- Thrall's Headpiece
(48831), -- Thrall's Legguards
(48832), -- Thrall's Spaulders
(48833), -- Thrall's Tunic
(48836), -- Nobundo's Gloves
(48837), -- Nobundo's Hauberk
(48838), -- Nobundo's Helm
(48839), -- Nobundo's Kilt
(48840), -- Nobundo's Shoulderpads
(48841), -- Thrall's Gloves
(48842), -- Thrall's Hauberk
(48843), -- Thrall's Helm
(48844), -- Thrall's Kilt
(48845), -- Thrall's Shoulderpads
(48846), -- Nobundo's Chestguard
(48847), -- Nobundo's Faceguard
(48848), -- Nobundo's Grips
(48849), -- Nobundo's Shoulderguards
(48850), -- Nobundo's War-Kilt
(48851), -- Thrall's Chestguard
(48852), -- Thrall's Faceguard
(48853), -- Thrall's Grips
(48854), -- Thrall's Shoulderguards
(48855), -- Thrall's War-Kilt
(48860), -- Hellscream's Battleplate
(48861), -- Hellscream's Gauntlets
(48862), -- Hellscream's Helmet
(48863), -- Hellscream's Legplates
(48864), -- Hellscream's Shoulderplates
(48865), -- Wrynn's Battleplate
(48866), -- Wrynn's Gauntlets
(48867), -- Wrynn's Helmet
(48868), -- Wrynn's Legplates
(48869), -- Wrynn's Shoulderplates
(48870), -- Hellscream's Breastplate
(48871), -- Hellscream's Greathelm
(48872), -- Hellscream's Handguards
(48873), -- Hellscream's Legguards
(48874), -- Hellscream's Pauldrons
(48875), -- Wrynn's Breastplate
(48876), -- Wrynn's Greathelm
(48877), -- Wrynn's Handguards
(48878), -- Wrynn's Legguards
(48879), -- Wrynn's Pauldrons
(48880), -- Koltira's Battleplate
(48881), -- Koltira's Gauntlets
(48882), -- Koltira's Helmet
(48883), -- Koltira's Legplates
(48884), -- Koltira's Shoulderplates
(48885), -- Thassarian's Battleplate
(48886), -- Thassarian's Gauntlets
(48887), -- Thassarian's Helmet
(48888), -- Thassarian's Legplates
(48889), -- Thassarian's Shoulderplates
(48890), -- Koltira's Chestguard
(48891), -- Koltira's Faceguard
(48892), -- Koltira's Handguards
(48893), -- Koltira's Legguards
(48894), -- Koltira's Pauldrons
(48895), -- Thassarian's Chestguard
(48896), -- Thassarian's Faceguard
(48897), -- Thassarian's Handguards
(48898), -- Thassarian's Legguards
(48899), -- Thassarian's Pauldrons
(48900), -- Turalyon's Tunic
(48901), -- Turalyon's Spaulders
(48902), -- Turalyon's Headpiece
(48903), -- Turalyon's Greaves
(48904), -- Turalyon's Gloves
(48905), -- Liadrin's Tunic
(48906), -- Liadrin's Spaulders
(48907), -- Liadrin's Headpiece
(48908), -- Liadrin's Greaves
(48909), -- Liadrin's Gloves
(48910), -- Liadrin's Battleplate
(48911), -- Liadrin's Gauntlets
(48912), -- Liadrin's Helm
(48913), -- Liadrin's Legplates
(48914), -- Liadrin's Shoulderplates
(48915), -- Turalyon's Battleplate
(48916), -- Turalyon's Gauntlets
(48917), -- Turalyon's Helm
(48918), -- Turalyon's Legplates
(48919), -- Turalyon's Shoulderplates
(48922), -- Liadrin's Breastplate
(48923), -- Liadrin's Faceguard
(48924), -- Liadrin's Handguards
(48925), -- Liadrin's Legguards
(48926), -- Liadrin's Shoulderguards
(48927), -- Turalyon's Breastplate
(48928), -- Turalyon's Faceguard
(48929), -- Turalyon's Handguards
(48930), -- Turalyon's Legguards
(48931), -- Turalyon's Shoulderguards
(48945), -- Gnomish Thinking Cap
(49050), -- Schematic: Jeeves
(49191), -- Relentless Gladiator's Blade of Celerity
(49209), -- Mutated Morrowgrain
(49223), -- Permission Slip
(49278), -- Goblin Rocket Pack
(49288), -- Little Ivory Raptor Whistle
(49289), -- Little White Stallion Bridle
(49301), -- Reclaimed Thunderstrike
(49312), -- Purified Onyxia Blood Talisman
(49313), -- Polished Dragonslayer's Signet
(49314), -- Sparkling Onyxia Tooth Pendant
(49334), -- Scale of Onyxia 2.0
(49340), -- Monster - Icecrown - 1H Sword - D03 - Blue
(49343), -- Spectral Tiger Cub
(49362), -- Onyxian Whelpling
(49373), -- Permission Slip
(49497), -- Reinforced Thunderstrike
(49645), -- Monster - Axe, 2H Icecrown Raid (Shadow)
(49655), -- Lovely Charm
(49662), -- Gryphon Hatchling
(49663), -- Wind Rider Cub
(49665), -- Pandaren Monk
(49680), -- Borrowed Tabard
(49686), -- Maghia's Misguided Quill
(49689), -- Monster - Axe, 1H Northrend B03 Black
(49693), -- Lil' Phylactery
(49703), -- Perpetual Purple Firework
(49704), -- Carved Ogre Idol
(49706), -- Monster - Frostmourne (Arthas Only Special)
(49708), -- Monster - Icecrown Citadel - Skybreaker Dreadblade
(49733), -- Monster - Sword 2H, Icecrown Citadel
(49739), -- Reforged Quel'Delar
(49750), -- Tempered Quel'Delar
(49852), -- Coffin Nail
(49853), -- Titanium Links of Lore
(49854), -- Mantle of Tattered Feathers
(49855), -- Plated Grips of Korth'azz
(49873), -- Monster - Axe 1H, Horde D03 Gold (Thrown)
(49915), -- Snivel's Ledger
(49916), -- Lovely Charm Bracelet
(49917), -- Brazie's Gnomish Pleasure Device
(49984), -- Monster - Sword2H, Ebon Blade (Green)
(50093), -- Pet Prep: A Beginner's Guide
(50204), -- Wand of the Drowned Contessa
(50248), -- Monster - Sword, 1H IcecrownRaid D02
(50289), -- Blacktip Shark
(50301), -- Landro's Pet Box
(50307), -- Infernal Spear
(50315), -- Seven-Fingered Claws
(50318), -- Ghostly Wristwraps
(50319), -- Unsharpened Ice Razor
(50431), -- Monster - Mace, Basic Stone Hammer (Kobold Worker)
(50442), -- Ashbringer (Extra Effects)
(50815), -- Shadowmourne Monster Offhand
(50840), -- Monster - Frostmourne, Broken (Arthas Only Special)
(51682), -- Scourgelord Shoulderplates
(51683), -- Scourgelord Legplates
(51684), -- Scourgelord Helmet
(51685), -- Scourgelord Gauntlets
(51686), -- Scourgelord Battleplate
(51687), -- Scourgelord Chestguard
(51688), -- Scourgelord Handguards
(51689), -- Scourgelord Faceguard
(51690), -- Scourgelord Legguards
(51691), -- Scourgelord Pauldrons
(51692), -- Lasherweave Pauldrons
(51693), -- Lasherweave Legplates
(51694), -- Lasherweave Helmet
(51695), -- Lasherweave Gauntlets
(51696), -- Lasherweave Robes
(51697), -- Lasherweave Raiment
(51698), -- Lasherweave Handgrips
(51699), -- Lasherweave Headguard
(51700), -- Lasherweave Legguards
(51701), -- Lasherweave Shoulderpads
(51702), -- Lasherweave Vestment
(51703), -- Lasherweave Gloves
(51704), -- Lasherweave Cover
(51705), -- Lasherweave Trousers
(51706), -- Lasherweave Mantle
(51707), -- Ahn'Kahar Blood Hunter's Tunic
(51708), -- Ahn'Kahar Blood Hunter's Spaulders
(51709), -- Ahn'Kahar Blood Hunter's Legguards
(51710), -- Ahn'Kahar Blood Hunter's Headpiece
(51711), -- Ahn'Kahar Blood Hunter's Handguards
(51712), -- Bloodmage Shoulderpads
(51713), -- Bloodmage Robe
(51714), -- Bloodmage Leggings
(51715), -- Bloodmage Hood
(51716), -- Bloodmage Gloves
(51717), -- Lightsworn Battleplate
(51718), -- Lightsworn Gauntlets
(51719), -- Lightsworn Helmet
(51720), -- Lightsworn Legplates
(51721), -- Lightsworn Shoulderplates
(51722), -- Lightsworn Tunic
(51723), -- Lightsworn Gloves
(51724), -- Lightsworn Headpiece
(51725), -- Lightsworn Greaves
(51726), -- Lightsworn Spaulders
(51727), -- Lightsworn Chestguard
(51728), -- Lightsworn Handguards
(51729), -- Lightsworn Faceguard
(51730), -- Lightsworn Legguards
(51731), -- Lightsworn Shoulderguards
(51732), -- Crimson Acolyte Leggings
(51733), -- Crimson Acolyte Robe
(51734), -- Crimson Acolyte Shoulderpads
(51735), -- Crimson Acolyte Gloves
(51736), -- Crimson Acolyte Hood
(51737), -- Crimson Acolyte Cowl
(51738), -- Crimson Acolyte Handwraps
(51739), -- Crimson Acolyte Mantle
(51740), -- Crimson Acolyte Raiments
(51741), -- Crimson Acolyte Pants
(51742), -- Shadowblade Gauntlets
(51743), -- Shadowblade Breastplate
(51744), -- Shadowblade Legplates
(51745), -- Shadowblade Helmet
(51746), -- Shadowblade Pauldrons
(51747), -- Frost Witch's Tunic
(51748), -- Frost Witch's Handguards
(51749), -- Frost Witch's Headpiece
(51750), -- Frost Witch's Legguards
(51751), -- Frost Witch's Spaulders
(51752), -- Frost Witch's Chestguard
(51753), -- Frost Witch's Grips
(51754), -- Frost Witch's Faceguard
(51755), -- Frost Witch's War-Kilt
(51756), -- Frost Witch's Shoulderguards
(51757), -- Frost Witch's Hauberk
(51758), -- Frost Witch's Gloves
(51759), -- Frost Witch's Helm
(51760), -- Frost Witch's Kilt
(51761), -- Frost Witch's Shoulderpads
(51762), -- Dark Coven Shoulderpads
(51763), -- Dark Coven Robe
(51764), -- Dark Coven Leggings
(51765), -- Dark Coven Hood
(51766), -- Dark Coven Gloves
(51767), -- Ymirjar Lord's Shoulderplates
(51768), -- Ymirjar Lord's Legplates
(51769), -- Ymirjar Lord's Helmet
(51770), -- Ymirjar Lord's Gauntlets
(51771), -- Ymirjar Lord's Battleplate
(51772), -- Ymirjar Lord's Breastplate
(51773), -- Ymirjar Lord's Handguards
(51774), -- Ymirjar Lord's Greathelm
(51775), -- Ymirjar Lord's Legguards
(51776), -- Ymirjar Lord's Pauldrons
(51997), -- Stalwart Spaulders
(51998), -- Vigorous Spaulders
(52011), -- Monster - Dreadlord's Blade
(52062), -- Monster - Sword 2H, Icecrown Citadel - Valanar
(52189), -- Elemental Sapta
(52202), -- Elemental Sapta
(52272), -- Cleansing Totem
(52275), -- Tablets of the Earth
(52276), -- Tablets of Fire
(52345), -- Cleansing Totem
(52562), -- Elemental Fire for the Soul
(52563), -- What Does 'The End of All Things' Mean for Me?
(52565), -- Finding Security and Comfort in a Doomed World
(52567), -- Test Buyback Gold Cost Ring
(52729), -- Recruit's Robe
(53491), -- Twilight Offering Bands
(53492), -- Ring of the Three-Headed Beast
(53493), -- Sacrificial Mail
(53494), -- Girdle of Oblation
(53495), -- Old Gods' Blessing
(53496), -- Barrier of the Earth Princess
(53497), -- Zaetar's Deathshroud
(53498), -- Earth Bride's Gown
(53499), -- Amulet of the Centauri
(53500), -- Tectonic Plate
(53501), -- Sulfuron's Favor
(53502), -- Flamelash Amulet
(53503), -- Pendant of Burning Spirits
(53504), -- Flamewaker's Treads
(53505), -- Salamander Skin
(53506), -- Cloak of Mocking Winds
(53507), -- Sandfury Sandals
(53508), -- Pulmonary Casing
(53509), -- Amulet of Evil Winds
(53510), -- Captured Frog
(53889), -- Monster - Fist, Zul'Aman (Main)
(53890), -- Monster - Fist, Zul'Aman (Offhand)
(53891), -- Monster - Shield, Zulaman (Blue)
(53924), -- Monster - Sword, Troll 1H
(54069), -- Blazing Hippogryph
(54212), -- Instant Statue Pedestal
(54218), -- Landro's Gift Box
(54291), -- A Steamy Romance Novel: Blue Moon
(54452), -- Ethereal Portal
(54455), -- Paint Bomb
(54467), -- Tabard Lost & Found
(54470), -- Fantasy Portrait
(54592), -- Sul'lithuz Scale Bracers
(54810), -- Celestial Dragon
(54822), -- Sen'jin Overcloak
(54847), -- Lil' XT
(54857), -- Murkimus' Little Spear
(54860), -- X-53 Touring Rocket
(56806) -- Mini Thor
;
