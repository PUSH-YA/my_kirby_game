//update layers
if(o_player.x > 200 && o_player.x < 700){
	if(layer_exists(mountain_layer)){
		layer_x(mountain_layer,o_player.x/2);
	}
		
	if(layer_exists(tree_layer)){
		layer_x(tree_layer,o_player.x/4);
	}
		
}
