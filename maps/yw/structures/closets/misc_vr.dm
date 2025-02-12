/obj/structure/closet/secure_closet/explorer
	icon = 'icons/obj/closet_vr.dmi'
	closet_appearance = /decl/closet_appearance/secure_closet/exploration
	starts_with = list(
		/obj/item/clothing/under/explorer,
		/obj/item/clothing/suit/storage/hooded/explorer,
		/obj/item/clothing/mask/gas/explorer,
		/obj/item/clothing/shoes/boots/winter/explorer,
		/obj/item/clothing/gloves/black,
		/obj/item/device/radio/headset/explorer,
		/obj/item/device/flashlight,
		/obj/item/device/gps/explorer,
		/obj/item/weapon/storage/box/flare,
		/obj/item/device/geiger,
		/obj/item/weapon/cell/device,
		/obj/item/device/radio,
		/obj/item/stack/marker_beacon/thirty,
		/obj/item/weapon/material/knife/tacknife/survival,
		/obj/item/weapon/material/knife/machete,
		/obj/item/clothing/accessory/holster/machete,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidprotein,
		/obj/item/device/cataloguer)

/obj/structure/closet/secure_closet/sar
	name = "field medic locker"
	closet_appearance = /decl/closet_appearance/secure_closet/medical
	starts_with = list(
		/obj/item/weapon/storage/backpack/dufflebag/emt,
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline,
		/obj/item/weapon/reagent_containers/glass/bottle/antitoxin,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/weapon/material/knife/tacknife/survival,
		/obj/item/weapon/gun/energy/locked/frontier/holdout,
		/obj/item/clothing/mask/gas/explorer,
		/obj/item/clothing/suit/storage/hooded/explorer/medic,
		/obj/item/clothing/suit/storage/hooded/wintercoat/medical/sar,
		/obj/item/clothing/shoes/boots/winter/explorer,
		/obj/item/device/radio/headset/sar,
		/obj/item/weapon/cartridge/medical,
		/obj/item/device/flashlight,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio/off,
		/obj/random/medical,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood = 2,
		/obj/item/weapon/reagent_containers/food/snacks/liquidprotein = 2,
		/obj/item/weapon/tool/crowbar,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/weapon/storage/box/freezer,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/taperoll/medical,
		/obj/item/device/gps/medical,
		/obj/item/device/geiger,
		/obj/item/bodybag/cryobag,
		/obj/item/device/cataloguer/compact)

/obj/structure/closet/secure_closet/pilot
	closet_appearance = /decl/closet_appearance/secure_closet/exploration/pilot
	starts_with = list(
		/obj/item/weapon/storage/backpack/parachute,
		/obj/item/weapon/material/knife/tacknife/survival,
		/obj/item/weapon/gun/energy/locked/frontier/holdout,
		/obj/item/clothing/head/pilot,
		/obj/item/clothing/under/rank/pilot1,
		/obj/item/clothing/suit/storage/toggle/bomber/pilot,
		/obj/item/clothing/shoes/boots/winter/explorer,
		/obj/item/clothing/mask/gas/half,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/gloves/fingerless,
		/obj/item/device/radio/headset/pilot/alt,
		/obj/item/device/flashlight,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidprotein,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle,
		/obj/item/weapon/storage/box/flare,
		/obj/item/weapon/cell/device,
		/obj/item/device/radio,
		/obj/item/device/gps/explorer,
		/obj/item/device/cataloguer/compact)

/obj/structure/closet/secure_closet/pathfinder
	name = "pathfinder locker"
	closet_appearance = /decl/closet_appearance/secure_closet/exploration/pathfinder
	req_access = list(access_pathfinder)
	starts_with = list(
		/obj/item/clothing/under/explorer,
		/obj/item/clothing/suit/storage/hooded/explorer,
		/obj/item/clothing/mask/gas/explorer,
		/obj/item/weapon/storage/belt/explorer/pathfinder,
		/obj/item/clothing/shoes/boots/winter/explorer,
		/obj/item/clothing/gloves/black,
		/obj/item/device/radio/headset/pathfinder,
		/obj/item/device/radio/headset/pathfinder/alt,
		/obj/item/weapon/cartridge/explorer,
		/obj/item/device/flashlight,
		/obj/item/device/gps/explorer,
		/obj/item/weapon/storage/box/flare,
		/obj/item/weapon/storage/box/explorerkeys,
		/obj/item/device/geiger,
		/obj/item/weapon/cell/device,
		/obj/item/device/radio,
		/obj/item/device/bluespaceradio/outpost_prelinked,
		/obj/item/stack/marker_beacon/thirty,
		/obj/item/weapon/material/knife/tacknife/survival,
		/obj/item/weapon/material/knife/machete/deluxe,
		/obj/item/weapon/gun/energy/locked/frontier/carbine,
		/obj/item/clothing/accessory/holster/machete,
		/obj/random/explorer_shield,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidprotein,
		/obj/item/device/cataloguer/compact/pathfinder,
		/obj/item/device/mapping_unit)

/obj/structure/closet/secure_closet/pathfinder/Initialize()
	if(prob(50))
		starts_with += /obj/item/weapon/storage/backpack
	else
		starts_with += /obj/item/weapon/storage/backpack/satchel/norm
	return ..()
