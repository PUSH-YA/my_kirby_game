#region move the view
view_width_offset = camera_get_view_width(view_camera[0])*1/4;
view_height_offset = camera_get_view_height(view_camera[0])*3/5;

camera_set_view_pos(view_camera[0], x - view_width_offset, y - view_height_offset);

#endregion