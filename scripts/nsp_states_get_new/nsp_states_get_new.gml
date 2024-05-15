/// @description nsp_variable_global_get_new(Name)
/// @param Name
function nsp_states_get_new() {
	/*
	Underlying NSP script.
	*/
	var nspToken = global.nspToken;
	var varname;

	varname = argument[0];

	if (string_copy(varname, 1, 7) == "states.") {

	  varname = string_delete(varname, 1, 7);
	
	  }
	switch (varname) begin

	 	case "normal":
			return states.normal
		break
		case "grabbed":
			return states.grabbed
		break
		case "tumble":
			return states.tumble
		break
		case "finishingblow":
			return states.finishingblow
		break
		case "ejected":
			return states.ejected
		break
		case "transitioncutscene":
			return states.transitioncutscene
		break
		case "fireass":
			return states.fireass
		break
		case "firemouth":
			return states.firemouth
		break
		case "titlescreen":
			return states.titlescreen
		break
		case "hookshot":
			return states.hookshot
		break
		case "tacklecharge":
			return states.tacklecharge
		break
		case "cheeseball":
			return states.cheeseball
		break
		case "slap":
			return states.slap
		break
		case "cheesepep":
			return states.cheesepep
		break
		case "cheesepepstick":
			return states.cheesepepstick
		break
		case "boxxedpep":
			return states.boxxedpep
		break
		case "pistolaim":
			return states.pistolaim
		break
		case "climbwall":
			return states.climbwall
		break
		case "knightpepslopes":
			return states.knightpepslopes
		break
		case "portal":
			return states.portal
		break
		case "secondjump":
			return states.secondjump
		break
		case "chainsawbump":
			return states.chainsawbump
		break
		case "handstandjump":
			return states.handstandjump
		break
		case "gottreasure":
			return states.gottreasure
		break
		case "knightpep":
			return states.knightpep
		break
		case "knightpepattack":
			return states.knightpepattack
		break
		case "meteorpep":
			return states.meteorpep
		break
		case "bombpep":
			return states.bombpep
		break
		case "grabbing":
			return states.grabbing
		break
		case "chainsawpogo":
			return states.chainsawpogo
		break
		case "shotgunjump":
			return states.shotgunjump
		break
		case "stunned":
			return states.stunned
		break
		case "highjump":
			return states.highjump
		break
		case "chainsaw":
			return states.chainsaw
		break
		case "facestomp":
			return states.facestomp
		break
		case "timesup":
			return states.timesup
		break
		case "machroll":
			return states.machroll
		break
		case "shotgun":
			return states.shotgun
		break
		case "pistol":
			return states.pistol
		break
		case "machfreefall":
			return states.machfreefall
		break
		case "throwing":
			return states.throwing
		break
		case "slam":
			return states.slam
		break
		case "superslam":
			return states.superslam
		break
		case "skateboard":
			return states.skateboard
		break
		case "grind":
			return states.grind
		break
		case "grab":
			return states.grab
		break
		case "punch":
			return states.punch
		break
		case "backkick":
			return states.backkick
		break
		case "uppunch":
			return states.uppunch
		break
		case "shoulder":
			return states.shoulder
		break
		case "backbreaker":
			return states.backbreaker
		break
		case "bossdefeat":
			return states.bossdefeat
		break
		case "pizzathrow":
			return states.pizzathrow
		break
		case "bossintro":
			return states.bossintro
		break
		case "gameover":
			return states.gameover
		break
		case "keyget":
			return states.keyget
		break
		case "tackle":
			return states.tackle
		break
		case "jump":
			return states.jump
		break
		case "ladder":
			return states.ladder
		break
		case "slipnslide":
			return states.slipnslide
		break
		case "comingoutdoor":
			return states.comingoutdoor
		break
		case "smirk":
			return states.smirk
		break
		case "Sjump":
			return states.Sjump
		break
		case "victory":
			return states.victory
		break
		case "Sjumpprep":
			return states.Sjumpprep
		break
		case "crouch":
			return states.crouch
		break
		case "crouchjump":
			return states.crouchjump
		break
		case "crouchslide":
			return states.crouchslide
		break
		case "mach1":
			return states.mach1
		break
		case "mach2":
			return states.mach2
		break
		case "machslide":
			return states.machslide
		break
		case "bump":
			return states.bump
		break
		case "hurt":
			return states.hurt
		break
		case "freefall":
			return states.freefall
		break
		case "hang":
			return states.hang
		break
		case "freefallland":
			return states.freefallland
		break
		case "door":
			return states.door
		break
		case "current":
			return states.current
		break
		case "boulder":
			return states.boulder
		break
		case "runonball":
			return states.runonball
		break
		case "mach3":
			return states.mach3
		break
		case "freefallprep":
			return states.freefallprep
		break
		case "Sjumpland":
			return states.Sjumpland
		break
		case "idle":
			return states.idle
		break
		case "turn":
			return states.turn
		break
		case "walk":
			return states.walk
		break
		case "land":
			return states.land
		break
		case "hit":
			return states.hit
		break
		case "stun":
			return states.stun
		break
		case "debugstate":
			return states.debugstate
		break
  
	 default:
	   NSP_notify("SCRIPT: nsp_variable_global_get_new. ERROR: Trying to fetch a non-existant state ("+varname+").");
	   return nspToken[NSP_TOK.abort];
	  break;
  
	end;




}
