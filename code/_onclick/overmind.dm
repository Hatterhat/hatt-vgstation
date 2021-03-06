// Blob Overmind Controls


/mob/camera/blob/CtrlClickOn(var/atom/A) // Expand blob
	var/turf/T = get_turf(A)
	if(T)
		expand_blob(T)

/mob/camera/blob/MiddleClickOn(var/atom/A) // Rally spores
	var/turf/T = get_turf(A)
	if(T)
		rally_spores(T)

/mob/camera/blob/AltClickOn(var/atom/A) // Create a shield
	var/turf/T = get_turf(A)
	if(T)
		create_shield(T)

/mob/camera/blob/DblClickOn(var/atom/A) //Teleport view to another blob
	var/turf/T = get_turf(A)

	var/obj/effect/blob/B = (locate(/obj/effect/blob) in T)

	if(!B)
		return
	else
		usr.forceMove(T)
