with (other || o_weapon){
	health--;
	o_player.flash = 3;
}
instance_destroy();