var/datum/controller/transfer_controller/transfer_controller

/datum/controller/transfer_controller
	var/timerbuffer = 0 //buffer for time check
	var/currenttick = 0
	var/shift_hard_end = 0 //VOREStation Edit
	var/shift_last_vote = 0 //VOREStation Edit
/datum/controller/transfer_controller/New()
	timerbuffer = config.vote_autotransfer_initial
	shift_hard_end = config.vote_autotransfer_initial + (config.vote_autotransfer_interval * config.vote_autotransfer_amount) //YW Edit: made that '1' a config //VOREStation Edit //Change this "1" to how many extend votes you want there to be.
	shift_last_vote = shift_hard_end - config.vote_autotransfer_interval //VOREStation Edit
	START_PROCESSING(SSprocessing, src)

/datum/controller/transfer_controller/Destroy()
	STOP_PROCESSING(SSprocessing, src)

/datum/controller/transfer_controller/process()
	currenttick = currenttick + 1
	//VOREStation Edit START
	if (round_duration_in_ds >= shift_last_vote - 2 MINUTES)
		shift_last_vote = 99999999 //Setting to a stupidly high number since it'll be not used again.
		var/hours = config.vote_autotransfer_interval / 36000
		to_world("<b>Warning: This upcoming round-extend vote will be your ONLY extend vote. Wrap up your scenes in the next [hours] hours if the round is extended.</b>") //YW Edit
	if (round_duration_in_ds >= shift_hard_end - 1 MINUTE)
		init_shift_change(null, 1)
		shift_hard_end = timerbuffer + config.vote_autotransfer_interval //If shuttle somehow gets recalled, let's force it to call again next time a vote would occur.
		timerbuffer = timerbuffer + config.vote_autotransfer_interval //Just to make sure a vote doesn't occur immediately afterwords.
	else if (round_duration_in_ds >= timerbuffer - 1 MINUTE)
		SSvote.autotransfer()
	//VOREStation Edit END
		timerbuffer = timerbuffer + config.vote_autotransfer_interval
