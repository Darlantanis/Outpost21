/decl/hierarchy/outfit/tunnel_clown
	name = "Tunnel Clown"
	uniform = /obj/item/clothing/under/rank/clown
	shoes = /obj/item/clothing/shoes/clown_shoes
	gloves = /obj/item/clothing/gloves/black
	mask = /obj/item/clothing/mask/gas/clown_hat
	head = /obj/item/clothing/head/chaplain_hood
	l_ear = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/plain/monocle
	suit = /obj/item/clothing/suit/storage/hooded/chaplain_hoodie
	r_pocket = /obj/item/weapon/bikehorn
	r_hand = /obj/item/weapon/material/twohanded/fireaxe

	id_slot = slot_wear_id
	id_type = /obj/item/weapon/card/id/syndicate/station_access
	id_pda_assignment = "Tunnel Clown!"

/decl/hierarchy/outfit/masked_killer
	name = "Masked Killer"
	uniform = /obj/item/clothing/under/overalls
	shoes = /obj/item/clothing/shoes/white
	gloves = /obj/item/clothing/gloves/sterile/latex
	mask = /obj/item/clothing/mask/surgical
	head = /obj/item/clothing/head/welding
	l_ear = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/plain/monocle
	suit = /obj/item/clothing/suit/storage/apron
	l_pocket = /obj/item/weapon/material/knife/tacknife
	r_pocket = /obj/item/weapon/surgical/scalpel
	r_hand = /obj/item/weapon/material/twohanded/fireaxe

/decl/hierarchy/outfit/masked_killer/post_equip(var/mob/living/carbon/human/H, var/datum/job/J)
	var/victim = get_mannequin(H.ckey)
	for(var/obj/item/carried_item in H.get_equipped_items(TRUE))
		carried_item.add_blood(victim) //Oh yes, there will be blood.. just not blood from the killer because that's odd

/decl/hierarchy/outfit/professional
	name = "Professional"
	uniform = /obj/item/clothing/under/suit_jacket{ starting_accessories=list(/obj/item/clothing/accessory/wcoat) }
	shoes = /obj/item/clothing/shoes/black
	gloves = /obj/item/clothing/gloves/black
	l_ear = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/weapon/melee/energy/sword
	mask = /obj/item/clothing/mask/gas/clown_hat

	id_slot = slot_wear_id
	id_type = /obj/item/weapon/card/id/syndicate/station_access
	pda_slot = slot_belt
	pda_type = /obj/item/device/pda/heads

/decl/hierarchy/outfit/professional/post_equip(var/mob/living/carbon/human/H, var/datum/job/J)
	var/obj/item/weapon/storage/secure/briefcase/sec_briefcase = new(H)
	for(var/obj/item/briefcase_item in sec_briefcase)
		qdel(briefcase_item)
	for(var/i=3, i>0, i--)
		sec_briefcase.contents += new /obj/item/weapon/spacecash/c1000
	sec_briefcase.contents += new /obj/item/weapon/gun/energy/crossbow
	sec_briefcase.contents += new /obj/item/weapon/gun/projectile/revolver/mateba
	sec_briefcase.contents += new /obj/item/ammo_magazine/s357
	sec_briefcase.contents += new /obj/item/weapon/plastique
	H.equip_to_slot_or_del(sec_briefcase, slot_l_hand)
