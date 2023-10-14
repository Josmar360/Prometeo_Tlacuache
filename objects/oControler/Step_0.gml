/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _cam_x = camera_get_view_x(main_cam);
var _cam_y = camera_get_view_y(main_cam);

if cam_target != noone {
	var _tar_x = cam_target.x - cam_w * 0.5;
	var _tar_y = cam_target.y - (cam_h * 0.5);
}

var _tar_x = clamp(_tar_x, 0, room_width - cam_w);
var _tar_y = clamp(_tar_y, 0, room_height - cam_h);

_cam_x = lerp(_cam_x, _tar_x, cam_speed);
_cam_y = lerp(_cam_y, _tar_y, cam_speed);

camera_set_view_pos(main_cam, _cam_x, _cam_y);


layer_x("parallax_background_1", _cam_x * -3.5);
layer_y("parallax_background_1", _cam_y);

layer_x("parallax_background_2", _cam_x * -3);
layer_y("parallax_background_2", _cam_y);

layer_x("parallax_background_3", _cam_x * -2.5);
layer_y("parallax_background_3", _cam_y);

layer_x("parallax_background_4", _cam_x * -2);
layer_y("parallax_background_4", _cam_y);

layer_x("parallax_background_5", _cam_x * -1.5);
layer_y("parallax_background_5", _cam_y);

layer_x("parallax_background_6", _cam_x * -1);
layer_y("parallax_background_6", _cam_y);

layer_x("parallax_background_2_1", _cam_x * 3.5);
layer_y("parallax_background_2_1", _cam_y);

layer_x("parallax_background_2_2", _cam_x * 3);
layer_y("parallax_background_2_2", _cam_y);

layer_x("parallax_background_2_3", _cam_x * 2.5);
layer_y("parallax_background_2_3", _cam_y);

layer_x("parallax_background_2_4", _cam_x * 2);
layer_y("parallax_background_2_4", _cam_y);