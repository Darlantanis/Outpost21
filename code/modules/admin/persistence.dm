/datum/admins/proc/view_persistent_data()
	set category = VERBTAB_ADMIN
	set name = "View Persistent Data"
	set desc = "Shows a list of persistent data for this round. Allows modification by admins."

	SSpersistence.show_info(usr)
