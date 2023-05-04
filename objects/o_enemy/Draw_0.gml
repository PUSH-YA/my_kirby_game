draw_self();

if(flash > 0 && health > 0){
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}
