/// Movimientos
// Puede escribir su código en este editor


var _hor=keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver=keyboard_check(vk_down) - keyboard_check(vk_up);

if (_hor != 0){
	if(place_free(x+_hor*8,y)){
		x+=_hor*8;
	}
	switch(_hor){
		case 1:
			sprite_index=spr_right;
		break;
		case -1:
			sprite_index=spr_left;
		break;
	}
	switch(_ver != 0){
		case 1:
		break;
		case -1:
			sprite_index=spr_deadh;
		break;
	}
}
else{
	switch(_hor){
	case 0:
	sprite_index=spr_stop_right;
	image_index = 0.3;
	break;
	case 1:
	//sprite_index=spr_stop_left;
	break;
}
	//sprite_index=spr_stop;
}

if (keyboard_check_pressed(vk_space)&&collision_rectangle(x-8,y,x+8,y+1,obj_bloque,false,false)){

vspeed=-10;
}

