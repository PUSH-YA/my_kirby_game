#region move the view
view_x_pos = x - camera_get_view_width(view_camera[0])*1/4;
view_y_pos = y - camera_get_view_height(view_camera[0])*4/5;

if(view_x_pos <= 0){
	view_x_pos = 0;
}

if(view_x_pos + camera_get_view_width(view_camera[0]) >= 1366){
	view_x_pos = 1366 - camera_get_view_width(view_camera[0]);
}

camera_set_view_pos(view_camera[0], view_x_pos, view_y_pos);

#endregion