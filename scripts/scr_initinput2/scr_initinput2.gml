function scr_initinput2(){
key_up = keyboard_check(ord("W"))
key_up2 = keyboard_check_pressed(ord("W"))
key_right = keyboard_check(ord("D"))
key_right2 = keyboard_check_pressed(ord("D"))
key_left = (-keyboard_check(ord("A")))
key_left2 = (-keyboard_check_pressed(ord("A")))
key_down = keyboard_check(ord("S"))
key_down2 = keyboard_check_pressed(ord("S"))
key_jump = keyboard_check_pressed(ord("L"))
key_jump2 = keyboard_check(ord("L"))
key_attack = keyboard_check(ord("K"))
key_attack2 = keyboard_check_pressed(ord("K"))
key_slap = keyboard_check(ord("J"))
key_slap2 = keyboard_check_pressed(ord("J"))
key_taunt = -1
key_taunt2 = -1
key_shoot = -1
key_shoot2 = -1
key_start = -1
key_escape = -1
}