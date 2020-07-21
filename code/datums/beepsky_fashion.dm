//similar to dog_fashion, but for beepsky, who has far more refined fashion tastes
/datum/beepsky_fashion
	var/name
	var/desc

	var/icon_file = 'icons/mob/secbot_head.dmi'
	var/obj_icon_state
	var/obj_alpha
	var/obj_color

	var/stun_sound //sound that replaces the stun attack when set

	//emotes
	var/death_emote
	var/capture_one
	var/capture_two
	var/infraction
	var/taunt
	var/attack_one
	var/attack_two

/datum/beepsky_fashion/proc/get_overlay(var/dir)
	if(icon_file && obj_icon_state)
		var/image/beepsky_overlay = image(icon_file, obj_icon_state, dir = dir)
		beepsky_overlay.alpha = obj_alpha
		beepsky_overlay.color = obj_color
		return beepsky_overlay

/datum/beepsky_fashion/proc/apply(mob/living/simple_animal/bot/secbot/beepers) //set the emote depending on the fashion datum, if nothing set, turn it back to how it was initially
	//assume name and description is always set, because otherwise, what would be the point of beepsky fashion?
	beepers.name = name
	beepers.desc = desc
	if(death_emote)
		beepers.death_emote = death_emote
	else
		beepers.death_emote = initial(beepers.death_emote)

	if(capture_one)
		beepers.capture_one = capture_one
	else
		beepers.capture_one = initial(beepers.capture_one)

	if(capture_two)
		beepers.capture_two = capture_two
	else
		beepers.capture_two = initial(beepers.capture_two)

	if(infraction)
		beepers.infraction = infraction
	else
		beepers.infraction = initial(beepers.infraction)

	if(infraction)
		beepers.taunt = taunt
	else
		beepers.taunt = initial(beepers.taunt)

	if(attack_one)
		beepers.attack_one = attack_one
	else
		beepers.attack_one = initial(beepers.attack_one)

	if(attack_two)
		beepers.attack_two = attack_two
	else
		beepers.attack_two = initial(beepers.attack_two)

/datum/beepsky_fashion/proc/stun_attack(mob/living/carbon/C) //fired when beepsky does a stun attack with the fashion worn, for sounds/overlays/etc
	return

//actual fashions from here on out
/datum/beepsky_fashion/wizard
	obj_icon_state = "wizard"
	name = "Archmage Beepsky"
	desc = "A secbot stolen from the wizard federation."
	death_emote = "BOT casts EI NATH on themselves!"
	capture_one = "BOT is casting cable ties on CRIMINAL!"
	capture_two = "BOT is casting cable ties on you!"
	infraction = "Magical disturbance of magnitude THREAT_LEVEL detected!"
	attack_one = "BOT casts magic missile on CRIMINAL!"
	attack_two = "BOT casts magic missile on you!"

/datum/beepsky_fashion/cowboy
	obj_icon_state = "cowboy"
	name = "Sheriff Beepsky"
	desc = "The sheriff of this here station."
	capture_one = "BOT is tying CRIMINAL up!"
	capture_two = "BOT is tying you up!"
	infraction = "Outlaws with a bounty of THREAT_LEVEL000 space dollars detected!"
	attack_one = "BOT unloads his revolver onto CRIMINAL!"
	attack_two = "BOT unloads his revolver onto you!"

/datum/beepsky_fashion/chef
	obj_icon_state = "chef"
	name = "Chef Beepsky"
	desc = "Cooking up the finest foods the station has ever seen."
	death_emote = "Mamma-mia!"
	infraction = "Grade THREAT_LEVEL prosciutto detected!"
	attack_one = "BOT slices wildly with a cleaver towards CRIMINAL!"
	attack_two = "BOT slices wildly with a cleaver towards you!"

/datum/beepsky_fashion/cat
	obj_icon_state = "cat"
	name = "OwOfficer Bweepskwee"
	desc = "A beepsky unit with cat ears. Why?"
	death_emote = "Nya!"
	capture_one = "BOT is tying CRIMINAL up!!"
	capture_two = "BOT is tying you up!"
	infraction = "Wevel THREAT_LEVEL infwactwion awert!!!"
	attack_one = "BOT shoves CRIMINAL onto a table!"
	attack_two = "BOT shoves you onto a table!"