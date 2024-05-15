global.door_object_arr = [obj_startgate, obj_snickchallengedoor, obj_door, obj_keydoor, obj_hallway]
function processcommand(commandstring,silentcommand = false,is_trigger = false){
	var _string = string_trim(commandstring)
	if(string_pos("gml", _string) == 1) {
		return docommand(_string, silentcommand, is_trigger)
	}
	if(string_pos("startupcommand", _string) == 1) {
		return docommand(_string, silentcommand, is_trigger)
	}
	if (string_pos(";", _string) != 0) {
		var _commands = string_split(_string + ";",";")
		var i = 0
		while (i < array_length(_commands)) {
			docommand(_commands[i],silentcommand, is_trigger)
			i++
		}
	} else{
			docommand(_string, silentcommand, is_trigger)
	}
}
function docommand(commandstring,silentcommand = false,is_trigger = false) {
	var playerid = instance_find(obj_player,0) 
	if(playerid == noone){
		playerid = self
	}
	/*if (string_pos("panic", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						global.panic = true
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			if(hasarg2 == false){
				global.panic = true
			}
	}*/
	if (string_pos("reload_gml", string_lower(commandstring)) == 1) {
		global.nsp_errorcount = 0
		with(obj_custom_object){
			if(step_event_saved != undefined){
				NSP_free_saved(step_event_saved)
			}
			if(draw_event_saved != undefined){
				NSP_free_saved(draw_event_saved)
			}
			if(drawgui_event_saved != undefined){
				NSP_free_saved(drawgui_event_saved)
			}
			if(step_event != ""){
				step_event_saved = NSP_save(step_event)
			}
			if(draw_event != ""){
				draw_event_saved = NSP_save(draw_event)
			}
			if(drawgui_event != ""){
				drawgui_event_saved = NSP_save(drawgui_event)
			}
		}
	}
	if (string_pos("gml", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,4);
		if(string_length(code) > 2){
			global.nsp_errorcount = 0
			try{
				NSP_execute_string(code)
			} catch(err){
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
	if (string_pos("startupcommand", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,15);
		if(string_length(code) > 2){
			var file = file_text_open_write(working_directory + "startupcommand.txt")
			file_text_write_string(file,code)
			file_text_close(file);
		}
	}
	if (string_pos("spawn", string_lower(commandstring)) == 1) {
		try{
			string_split(commandstring, " ");
		} catch(err){
			return get_string_async("string splitting failed, aborting...", err);
		}
		var commands = string_split(commandstring, " ");
		var hasarg2 = false
		var hasarg3 = false
		var distance = 0
		var _object = obj_forknight
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
						hasarg2 = true
					if(object_exists(asset_get_index(commands[i]))){
						_object = asset_get_index(commands[i])
					}
				}
				if(i == 3){
					distance = real(commands[i])
					hasarg3 = true
				}
				if(i >= 3){
					break
				}
		}
		if(hasarg2 == false) {
			if(is_trigger){
				instance_create(self.x, self.y, obj_forknight)
			} else {
				instance_create(playerid.x, playerid.y - 20, obj_forknight)
			}
		} else {	
			if(is_trigger){
				var object = instance_create(self.x + distance, self.y, _object)
			} else{
				if(variable_instance_exists(playerid,"xscale")){
					if(playerid.xscale >= 0){
						var object = instance_create(playerid.x + distance, playerid.y, _object)
					} else {
						var object = instance_create(playerid.x - distance, playerid.y, _object)	
					}
				} else {
					var object = instance_create(playerid.x + distance, playerid.y, _object)
				}
			}
			with(object) 
			{
				for (var i2 = 0; i2 < array_length(global.door_object_arr); i2++) 
				{
					if (global.door_object_arr[i2] == object_index){
						variable_instance_set(id, "targetRoom", room)
					}
				}
			}
			if(instance_exists(obj_fakeeditor_old)){
				if(obj_fakeeditor_old.editormode == 1){
					with(object){
						variable_instance_set(id, "createdbyeditor", 1)
						variable_instance_set(id, "editorplacedroom", room)
						variable_instance_set(id, "oldinstanceeditor", object_get_name(object_index))
						variable_instance_set(id, "persistent", 1)
					}
					alarm[1] = 1
				}
			}
		}
	}
	if (string_pos("play_sound", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			var _audio = sfx_taunt
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if(audio_exists(asset_get_index(commands[i]))){
							_audio = asset_get_index(commands[i])
						}
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			scr_soundeffect(_audio)
	}
	if (string_pos("play_music", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			var _audio = mu_entrance
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if(audio_exists(asset_get_index(commands[i]))){
							_audio = asset_get_index(commands[i])
						}
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			with(obj_music){
				audio_stop_all()
				scr_sound(_audio)
			}
	}
	if (string_pos("player_set_state", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
							//show_message("processing")
							switch(commands[i]){
								case "states.knightpep":
								case "knightpep":
									with(obj_player1){
									state = states.knightpep
									sprite_index = spr_knightpepidle
									}
								break
								case "states.cheesepep":
								case "cheesepep":
									with(obj_player1){
									state = states.cheesepep
									sprite_index = spr_cheesepep_idle
									}
								break
								case "states.normal":
								case "normal":
									with(obj_player1){
									state = states.normal
									shotgunAnim = 0
									sprite_index = spr_idle
									}
								break
								case "states.shotgun":
								case "shotgun":
									with(obj_player1)
										shotgunAnim = 1
								break
								case "states.boxxedpep":
								case "boxxedpep":
									with(obj_player1)
									state = states.boxxedpep
								break
								case "states.cheeseball":
								case "cheeseball":
									with(obj_player1)
									state = states.cheeseball
								break
								case "states.fireass":
								case "fireass":
									with(obj_player1) {
									state = states.fireass
									vsp = -25
									sprite_index = spr_fireass
									image_index = 0
									movespeed = hsp
									if (!audio_is_playing(sfx_scream5))
										scr_soundeffect(sfx_scream5)
									}
								break
								case "states.firemouth":
								case "firemouth":
									with(obj_player1)
									state = states.firemouth
								break
								case "states.debugstate":
								case "debugstate":
									with(obj_player1)
									state = states.debugstate
								break
							}
						}
					if(i >= 2){
						break
					}
				}
			}
			//instance_set_variable obj_player 
		if (string_pos("instance_set_variable", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var ourinstance = undefined
			var tempvarname = undefined
			var tempvartype = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if (asset_get_index(commands[i]) != -1){
							ourinstance = asset_get_index(commands[i])
						} else {
								show_message_async("invalid instance \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
								show_message_async("invalid type \"" + commands[i] + "\" Available types: bool, string, int, float, real, asset")
							break
						}
					}
					if(i == 4){
						tempvarname = commands[i]
						if(!variable_instance_exists(ourinstance,tempvarname)){
								show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 5){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,bool(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set bool")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,int64(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set int")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,real(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set real")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									variable_instance_set(ourinstance,tempvarname,commands[i])
									if(!silentcommand) {
										show_message_async("successfully set string")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									variable_instance_set(ourinstance,tempvarname,asset_get_index(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set asset")
									}
								}
							break
						}
					}
					if (i >= 5) {
						break
					}
				}
			}
		if (string_pos("instance_set_variable_all", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var ourinstance = undefined
			var tempvarname = undefined
			var tempvartype = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if (asset_get_index(commands[i]) != -1){
							ourinstance = asset_get_index(commands[i])
						} else {
								show_message_async("invalid instance \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
								show_message_async("invalid type \"" + commands[i] + "\" Available types: bool, string, int, float, real, asset")
							break
						}
					}
					if(i == 4){
						tempvarname = commands[i]
						if(!variable_instance_exists(ourinstance,tempvarname)){
								show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 5){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,bool(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set bool")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,int64(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set int")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,real(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set real")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									with(ourinstance){
										variable_instance_set(id,tempvarname,commands[i])
									}
									if(!silentcommand) {
										show_message_async("successfully set string")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									with(ourinstance){
										variable_instance_set(id,tempvarname,asset_get_index(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set asset")
									}
								}
							break
						}
					}
					if (i >= 5) {
						break
					}
				}
			}
		if (string_pos("global_set_variable", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var tempvartype = undefined
			var tempvarname = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
							show_message_async("invalid type \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvarname = commands[i]
						if(!variable_global_exists(tempvarname)){
							show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 4){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									variable_global_set(tempvarname,bool(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set bool.")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									variable_global_set(tempvarname,int64(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set int.")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									variable_global_set(tempvarname,real(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set real.")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									variable_global_set(tempvarname,commands[i])
									if(!silentcommand) {
										show_message_async("successfully set string.")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									variable_global_set(tempvarname,asset_get_index(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set asset.")
									}
								}
							break
						}
					}
					if (i >= 4) {
						break
					}
				}
			}
		switch (string_lower(commandstring)) {
			case "noclip":
				with(obj_player) {
					if (state != states.debugstate) {
						state = states.debugstate
					} else {
						state = states.normal
					}
				}
				break
			case "panic":
				with(obj_player) {
					global.panic = true
					global.fill = 0
				}
				break
			case "showcollision":
			case "showcollisions":
				global.showcollisions = !global.showcollisions
				alarm[1]= 1
			break
				case "showcollision true":
				case "showcollisions true":
					global.showcollisions = true
					alarm[1]= 1
				break
				case "showcollision false":
				case "showcollisions false":
					global.showcollisions = false
					alarm[1]= 1
				break
				case "hidetile":
				case "hidetiles":
					layer_set_visible(layer_get_id("Tiles_BG"),false)
					layer_set_visible(layer_get_id("Tiles_BG2"),false)
					layer_set_visible(layer_get_id("Tiles_BG3"),false)
					layer_set_visible(layer_get_id("Tiles_1"),false)
					layer_set_visible(layer_get_id("Tiles_2"),false)
					layer_set_visible(layer_get_id("Tiles_3"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground1"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground2"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground3"),false)
				break
				case "showtile":
				case "showtiles":
					global.hidetiles = false
					layer_set_visible(layer_get_id("Tiles_BG"),true)
					layer_set_visible(layer_get_id("Tiles_BG2"),true)
					layer_set_visible(layer_get_id("Tiles_BG3"),true)
					layer_set_visible(layer_get_id("Tiles_1"),true)
					layer_set_visible(layer_get_id("Tiles_2"),true)
					layer_set_visible(layer_get_id("Tiles_3"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground1"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground2"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground3"),true)
				break
				case "toggletile":
				case "toggletiles":
					global.hidetiles = !global.hidetiles
					if global.hidetiles
					{
						layer_set_visible(layer_get_id("Tiles_BG"),false)
						layer_set_visible(layer_get_id("Tiles_BG2"),false)
						layer_set_visible(layer_get_id("Tiles_BG3"),false)
						layer_set_visible(layer_get_id("Tiles_1"),false)
						layer_set_visible(layer_get_id("Tiles_2"),false)
						layer_set_visible(layer_get_id("Tiles_3"),false)
						layer_set_visible(layer_get_id("Tiles_Foreground1"),false)
						layer_set_visible(layer_get_id("Tiles_Foreground2"),false)
						layer_set_visible(layer_get_id("Tiles_Foreground3"),false)
					}
					if !global.hidetiles
					{
						layer_set_visible(layer_get_id("Tiles_BG"),true)
						layer_set_visible(layer_get_id("Tiles_BG2"),true)
						layer_set_visible(layer_get_id("Tiles_BG3"),true)
						layer_set_visible(layer_get_id("Tiles_1"),true)
						layer_set_visible(layer_get_id("Tiles_2"),true)
						layer_set_visible(layer_get_id("Tiles_3"),true)
						layer_set_visible(layer_get_id("Tiles_Foreground1"),true)
						layer_set_visible(layer_get_id("Tiles_Foreground2"),true)
						layer_set_visible(layer_get_id("Tiles_Foreground3"),true)
					}
				break
				case "character s":
				case "character snick":
					with (obj_player1)
					{
						character = "S"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character p":
				case "character peppino":
					with (obj_player1)
					{
						character = "P"
						ispeppino = 1
						scr_characterspr()
					}
				break
				case "character n":
				case "character oldnoise":
					with (obj_player1)
					{
						character = "N"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "togglebinds":
					if(global.showbinds){
						global.showbinds = false
					} else {
						global.showbinds = true
					}
				break
				case "toggleoldeditor":
					if(obj_fakeeditor_old.editormode){
						obj_fakeeditor_old.editormode = false
					} else {
						obj_fakeeditor_old.editormode = true
					}
				break
				case "help":
					get_string_async("Available Commands: ","noclip, showcollisions <boolean>, panic, hidetiles, showtiles, toggletiles, character <string>, player_set_state <states.state>,instance_set_variable <obj_> <type> <variablename> <new value>,global_set_variable <type> <variablename> <new value>,spawn <obj_> <optional distance>, play_sound <sound>, play_music <sound>, togglebinds, gml <gml_code>, instance_set_variable_all <obj_> <type> <variablename> <new value>, reload_gml, toggleoldeditor")
				break
	}
}