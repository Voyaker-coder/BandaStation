GLOBAL_LIST_EMPTY(world_gibs)

/obj/effect/decal/cleanable/blood/gibs
	var/spawn_time

/obj/effect/decal/cleanable/blood/gibs/Initialize(mapload)
	. = ..()
	spawn_time = world.time
	GLOB.world_gibs += src

/obj/effect/decal/cleanable/blood/gibs/Destroy()
	GLOB.world_gibs -= src
	return ..()

GLOBAL_LIST_EMPTY(world_blood)

/obj/effect/decal/cleanable/blood
	var/spawn_time

/obj/effect/decal/cleanable/blood/Initialize(mapload)
	. = ..()
	spawn_time = world.time
	GLOB.world_blood += src

/obj/effect/decal/cleanable/blood/gibs/Destroy()
	GLOB.world_blood -= src
	return ..()
