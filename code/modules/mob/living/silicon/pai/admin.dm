// Originally a debug verb, made it a proper adminverb for ~fun~
/client/proc/makePAI(turf/t in view(), name as text, pai_key as null|text)
	set name = "Make pAI"
	set category = VERBTAB_ADMIN

	if(!check_rights(R_ADMIN|R_EVENT|R_DEBUG))
		return

	if(!pai_key)
		var/client/C = tgui_input_list(usr, "Select client:", "Client Choice", GLOB.clients)
		if(!C) return
		pai_key = C.key

	log_and_message_admins("made a pAI with key=[pai_key] at ([t.x],[t.y],[t.z])")
	var/obj/item/device/paicard/card = new(t)
	var/mob/living/silicon/pai/pai = new(card)
	pai.key = pai_key
	card.setPersonality(pai)

	if(name)
		pai.SetName(name)
