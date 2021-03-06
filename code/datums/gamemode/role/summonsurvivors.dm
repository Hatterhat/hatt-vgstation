/*
 * Summon guns/swords/magic traitors
 */

/datum/role/survivor
	id = SURVIVOR
	name = SURVIVOR
	logo_state = "gun-logo"
	default_admin_voice = "Common Sense"
	admin_voice_style = "warning"
	var/survivor_type = "survivor"
	var/summons_received

/datum/role/survivor/crusader
	id = CRUSADER
	name = CRUSADER
	survivor_type = "crusader"
	logo_state = "sword-logo"

/datum/role/survivor/Greet()
	to_chat(antag.current, "<B>You are a [survivor_type]!</B><BR>Your own safety matters above all else, trust no one and kill anyone who gets in your way. However, armed as you are, now would be the perfect time to settle that score or grab that pair of yellow gloves you've been eyeing...")

/datum/role/survivor/ForgeObjectives()
	var/datum/objective/survive/S = new
	AppendObjective(S)

/datum/role/survivor/GetScoreboard()
	. = ..()
	. += "The [name] received the following as a result of a summoning spell: [summons_received]<BR>"

//Note this is a wizard subtype

/datum/role/wizard/summon_magic
	disallow_job = FALSE
	name = MAGICIAN
	id = MAGICIAN
	logo_state = "magik-logo"
	var/summons_received

/datum/role/wizard/summon_magic/ForgeObjectives()
	var/datum/objective/survive/S = new
	AppendObjective(S)

/datum/role/wizard/summon_magic/Greet()
	to_chat(antag.current, "<B>You are a Magician!</B><BR>Your own safety matters above all else, trust no one and kill anyone who gets in your way. However, armed as you are, now would be the perfect time to settle that score or grab that pair of yellow gloves you've been eyeing...")

/datum/role/wizard/summon_magic/OnPostSetup(var/laterole = FALSE)
	return TRUE

/datum/role/wizard/summon_magic/GetScoreboard()
	. = ..()
	. += "The [name] received the following as a result of a summoning spell: [summons_received]<BR>"

/datum/role/wizard/summon_magic/artifact
	name = MAGICIAN_ARTIFACT
	id = MAGICIAN_ARTIFACT

/datum/role/wizard/summon_magic/artifact/Greet()
	to_chat(antag.current, "<B>You are a Magical Artificer!</B><BR>Your own safety matters above all else, trust no one and kill anyone who gets in your way. However, armed as you are, now would be the perfect time to settle that score or grab that pair of yellow gloves you've been eyeing...")

/datum/role/wizard/summon_potions
	disallow_job = FALSE
	name = POTION
	id = POTION
	logo_state = "magik-logo"
	var/summons_received

/datum/role/wizard/summon_potions/ForgeObjectives()
	var/datum/objective/survive/potions/S = new
	AppendObjective(S)

/datum/role/wizard/summon_potions/Greet()
	to_chat(antag.current, "<B>You are a Potion Seller!</B><BR>Your own safety matters abov- Fuck that, GO SELL SOME POTIONS!")

/datum/role/wizard/summon_potions/OnPostSetup(var/laterole = FALSE)
	return TRUE

/datum/role/wizard/summon_potions/GetScoreboard()
	. = ..()
	. += "The [name] received the following as a result of a summoning spell: [summons_received]<BR>"

