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


distance_to_attack = point_distance(x,y,o_player.x,o_player.y)

//Animation
image_speed = 0;
sprite_index = s_boss;
if(boss_health > 0){
	if(attack < 30 || distance_to_attack > safe_space){
		image_index = 0;
	}else {
		image_index = 1;
		if(attack >= 60){ // shooty shooty time
			attack = 0;
			for(i = 10; i >= 0; i--){
				y = y-i;
			}
			
			with (instance_create_layer(x,y, "bullets", o_bullet_boss)){
				speed = 6;
				direction  =  point_direction(other.x,other.y,o_player.x, o_player.y);
				image_angle = direction;
			}
		}
	}
	attack++;
}else{
	sprite_index = s_boss
	image_index = 2;
	
	//death timer
	if(timer > 0){
		timer--;
	}else{
		instance_destroy();
	}
}