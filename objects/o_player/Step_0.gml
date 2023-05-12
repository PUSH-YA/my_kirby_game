//player inputs
if(has_control){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

	//movement
	var move = key_right - key_left;
	hsp = move * walkspeed;
	
	if(place_meeting(x,y+1,o_wall) && (key_jump)){
	audio_play_sound(sn_jump,6,false);
	vsp = -8;
	}
}
	
vsp = vsp + grv;




//horizontal collision
if(place_meeting(x+hsp, y, o_wall)){
	hsp = 0;
}

//vertical collision
if(place_meeting(x, y+vsp, o_wall)){
	vsp = 0;
}
y = y + vsp;



//clamp the player
x = x + hsp;
if(x <= give_space){
	x= give_space;
}

if(x >= 1366 - give_space){
	x = 1366 - give_space;
}




//Animation
if(health > 0){
	//in air
	if(!place_meeting(x,y+1,o_wall)){
	sprite_index = s_player_jumping;
	image_speed = 0;
	if(vsp > 0) {
		image_index = 1;
	}
	else image_index = 0;
	
	//on foor
	}else{
		
		//landing dust animation and sound
		if(sprite_index == s_player_jumping) {
			audio_play_sound(sn_land,5,false);
			repeat(irandom_range(4,8)){
				with(instance_create_layer(x, bbox_bottom, "bullets", o_dust)){
					vsp = 0;
				}
			}
		}
		
		if(hsp == 0){
		sprite_index = s_player_standing;
		}else{
			sprite_index = s_player_walking;
			image_speed = 1;
		}
	}
	
	
	// dead
}else{
	image_speed = 0.25;
	//has_control = 0;
	hsp = 0;
	sprite_index = s_dead;
	has_control = 0;
	
	if(timer < 0){
		slide_transition(TRANS_MODE.GOTO, Menu);
	}else{
		timer--;
		if(timer == (60*5 - 5)) audio_play_sound(sn_death, 11, false);
	}
}

