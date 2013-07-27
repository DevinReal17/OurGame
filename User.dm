mob

	Login()
		world << "[usr] has joined"
		usr.Move(locate(/turf/spawnTile))
		name = "[usr]"

	icon = 'Character.dmi'
	icon_state = "man_1"

	var
		MaxHealth = 10
		Health = 10

	proc
		death()
			world << "[usr] dies!"
			del(src)

		damage(num)
			world << "[usr] was hit for [num] damage!"
			Health =- num

			if (Health <=0)
				Health = 0
				death()

	verb
		say(msg as text)
			world << "[usr]: [msg]"

		attack(mob/M as mob in oview(1))
			M.damage(rand(1,3))


