/// @description Insert description here
// You can write your code in this editor
hspeed=0;
vspeed=0;
image_speed=0;
if(!place_meeting(x,y,Bush)&&distance_to_object(NPCParent)>=70){
	depth=0;
}

if(keyboard_check(ord("W"))){
	facing=0;
	ChangeSprite(0);
	MoveOrCollideY(Colliders,-player_moving_speed);
	image_speed=1;
}
if(keyboard_check(ord("S"))){
	facing=1;
	ChangeSprite(1);
	MoveOrCollideY(Colliders,player_moving_speed);
	image_speed=1;
}
if(keyboard_check(ord("A"))){
	facing=3;
	ChangeSprite(3);
	MoveOrCollideX(Colliders,-player_moving_speed);
	image_speed=1;
}
if(keyboard_check(ord("D"))){
	facing=2;
	ChangeSprite(2);
	MoveOrCollideX(Colliders,player_moving_speed);
	image_speed=1;
}
NPCInteraction();

if(distance_to_object(Exit)<=20){
	//win
	audio_play_sound(finish,1,false);
	room_goto_previous();
	
}




function MoveOrCollideX(obj_to_check,velocityX){
	var meet=false;
	for(var i=0; i<array_length(Colliders);i++){
		if(place_meeting(x+velocityX,y,obj_to_check[i])){
			meet=true;
			if(obj_to_check[i]==Door){
				if(global.haskey){
					with(Door){
						audio_play_sound(door_open,1,false);
						instance_destroy();
					}
				}
			}
		}
	}
	if(!meet){
		hspeed=velocityX;
	}else{
		hspeed=0;
	}
}

function MoveOrCollideY(obj_to_check,velocityY){
	var meet=false;
	for(var i=0; i<array_length(Colliders);i++){
		if(place_meeting(x,y+velocityY,obj_to_check[i])){
			meet=true;
			if(obj_to_check[i]==Door){
				if(global.haskey){
					with(Door){
						audio_play_sound(door_open,1,false);
						instance_destroy();
					}
				}
			}
		}
	}
	if(!meet){
		vspeed=velocityY;
	}else{
		vspeed=0;
	}
}

function ChangeSprite(facingIndex){
	if(facingIndex==0){
		sprite_index=player_forward;
	}else if(facingIndex==1){
		sprite_index=player_backward;
	}else if(facingIndex==2){
		sprite_index=player_right;
	}else{
		sprite_index=player_left;
	}
}