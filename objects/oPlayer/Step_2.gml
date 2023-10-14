/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!collision_rectangle(x-8,y,x+8,y+1,obj_bloque,false,false)){
	gravity=0.3;
	
}
if(vspeed>0){
	var _ground=collision_rectangle(x-8,y,x+8,y+vspeed,obj_bloque,false,false);
	if (_ground){
		y=_ground.y;
		vspeed=0;
		gravity=0;	
	}
	
}

else if (vspeed<0){	
var _celing=collision_rectangle(x-8,y-25,x+8,y-25+vspeed,obj_bloque,false,false);
		if (_celing) {
			y=_celing.y+_celing.sprite_height+25;
			vspeed=0;
		}
	}