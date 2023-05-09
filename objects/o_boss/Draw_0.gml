draw_self();

if(flash > 0 && boss_health > 0){
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}