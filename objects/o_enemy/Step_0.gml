vsp = vsp+grv;


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
image_speed = 0;
if(health > 0){
	sprite_index = s_enemy;
	image_index = priv_index;
}else{
	sprite_index = s_enemy_down;
	image_index = priv_index;
	
	//death timer
	if(timer > 0){
		timer--;
	}else{
		instance_destroy();
	}
}

