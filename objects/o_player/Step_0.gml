//player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//movement
var move = key_right - key_left;
hsp = move * walkspeed;
vsp = vsp + grv;

if(place_meeting(x,y+1,o_wall) && (key_jump)){
	vsp = -7;
}


//horizontal collision
if(place_meeting(x+hsp, y, o_wall)){
	hsp = 0;
}
x = x + hsp;



//vertical collision
if(place_meeting(x, y+vsp, o_wall)){
	vsp = 0;
}
y = y + vsp;


//Animation
if(!place_meeting(x,y+1,o_wall)){
	sprite_index = s_player_jumping;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1;
	else image_index = 2;
}else if(hsp == 0){
	sprite_index = s_player_standing;
}else{
	sprite_index = s_player_walking;
	image_speed = 1;
}




//dusting
//if(x!= xprevious and can_dust == true){
//	can_dust = false;
//	var random_time = irandom_range(-1,2);
//	alarm_set(0, 8 + random_time);
		
//	part_particles_create(o_particles.particle_system,x,y, o_particles.particle_dust,1);
//}

