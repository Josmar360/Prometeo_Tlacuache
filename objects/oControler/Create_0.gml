/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

cam_w = 1500;
cam_h = 768;

scale_resolution = 3;
cam_speed = 0.2;

cam_target = (instance_exists(oPlayer) ? oPlayer : noone);

view_enabled = true;
view_visible[0] = true;

main_cam = camera_create_view(0, 0, cam_w, cam_h);

view_set_camera(0, main_cam);

surface_resize(application_surface, cam_w * scale_resolution, cam_h * scale_resolution);

display_set_gui_size(cam_w, cam_h);

window_set_size(cam_w * scale_resolution, cam_h * scale_resolution);

window_set_position(0,0);