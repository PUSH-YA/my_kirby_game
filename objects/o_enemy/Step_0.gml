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
if(enemy_health > 0){
	sprite_index = s_enemy;
	image_index = priv_index;
	
	//shooty shooty time
	distance_to_attack = point_distance(x,y,o_player.x,o_player.y)
	if(attack >= 120 && distance_to_attack < safe_space){ // shooty shooty time
			
			attack = 0;
			with (instance_create_layer(x,y, "bullets", o_bullet_boss)){
				speed = 4;
				direction  =  point_direction(other.x,other.y,o_player.x, o_player.y-5);
				image_angle = direction;
			}
	}
	attack++;
}	
else{
	sprite_index = s_enemy_down;
	image_index = priv_index;
	
	//death timer
	if(timer > 0){
		timer--;
	}else{
		instance_destroy();
	}
}



		

