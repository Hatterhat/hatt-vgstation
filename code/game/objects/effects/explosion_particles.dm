/obj/effect/expl_particles
	name = "explosive particles"
	icon_state = "explosion_particle"
	opacity = 1
	anchored = 1

/obj/effect/expl_particles/New()
	..()
	spawn (15)
		qdel(src)
	return

/obj/effect/expl_particles/Move(NewLoc, Dir = 0, step_x = 0, step_y = 0, glide_size_override = 0)
	..()
	return

/datum/effect/system/expl_particles
	number = 10
	var/total_particles = 0

/datum/effect/system/expl_particles/set_up(n = 10, loca)
	number = n
	if(istype(loca, /turf/))
		location = loca
	else
		location = get_turf(loca)

/datum/effect/system/expl_particles/start()
	var/i = 0
	for(i=0, i<src.number, i++)
		spawn(0)
			var/obj/effect/expl_particles/expl = new /obj/effect/expl_particles(src.location)
			var/direct = pick(alldirs)
			for(i=0, i<pick(1;25,2;50,3,4;200), i++)
				sleep(1)
				step(expl,direct)

/obj/effect/explosion
	name = "explosive particles"
	icon = 'icons/effects/96x96.dmi'
	icon_state = "explosion"
	opacity = 1
	anchored = 1
	mouse_opacity = 0
	pixel_x = -WORLD_ICON_SIZE
	pixel_y = -WORLD_ICON_SIZE

/obj/effect/explosion/New()
	..()
	spawn (10)
		src.forceMove(null)
	return

/datum/effect/system/explosion/set_up(loca)
	if(istype(loca, /turf/))
		location = loca
	else
		location = get_turf(loca)

/datum/effect/system/explosion/start()
	new/obj/effect/explosion( location )
	var/datum/effect/system/expl_particles/P = new/datum/effect/system/expl_particles()
	P.set_up(10,location)
	P.start()
	spawn(5)
		var/datum/effect/system/smoke_spread/S = new/datum/effect/system/smoke_spread()
		S.set_up(5,0,location,null)
		S.start()
/*
/obj/effect/small_explosion
	name = "explosion"
	icon = 'icons/effects/96x96.dmi'
	icon_state = "explosion_small"
	opacity = 0
	anchored = 1
	mouse_opacity = 0
	pixel_x = -WORLD_ICON_SIZE
	pixel_y = -WORLD_ICON_SIZE

/obj/effect/small_explosion/New(turf/loc,var/ex_iconstate = "explosion_small", var/pX = 0, var/pY = 0)
	..()
	pixel_x += pX
	pixel_y += pY
	icon_state = ex_iconstate
	spawn (20)
		src.forceMove(null)
	return

/datum/effect/system/small_explosion
	var/turf/location
	var/ex_icon = "explosion_small"
	var/pixel_x = 0
	var/pixel_y = 0

/datum/effect/system/small_explosion/proc/set_up(loca,var/ex_iconstate = "explosion_small", var/pX = 0, var/pY = 0)
	if(istype(loca, /turf/))
		location = loca
	else
		location = get_turf(loca)
	ex_icon = ex_iconstate
	pixel_x = pX
	pixel_y = pY

/datum/effect/system/small_explosion/proc/start()
	new/obj/effect/small_explosion( location , ex_icon, pixel_x, pixel_y)
*/
