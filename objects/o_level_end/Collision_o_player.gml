/// @ desc Move to next room
with(o_player){
	if(has_control){
		has_control = 0;
	}
	slide_transition(TRANS_MODE.GOTO, other.target);
}