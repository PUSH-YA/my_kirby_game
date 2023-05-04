x = o_player.x+20;
y = o_player.y;

image_angle = point_direction(x,y,mouse_x, mouse_y);



if (keyboard_check_pressed(vk_shift) || mouse_check_button_pressed(mb_any)){

	for(i = 5; i >= 0; i--){
		x = x - lengthdir_x(i, image_angle);
		y = y - lengthdir_y(i, image_angle);
	}

	//like editing in the player code
	with (instance_create_layer(x,y, "bullets", o_bullet)){
		speed = 10;
		direction  = other.image_angle;
		image_angle = direction;
	}
	
}

