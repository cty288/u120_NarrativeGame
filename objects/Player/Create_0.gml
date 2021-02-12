facing=0; //0:forward, 1:backward, 2:right, 3:left
player_moving_speed=2;
canvas=instance_find(Canvas,0);


//Colliders is an array of all colliders to check
Colliders[0]=ColliderObj;
Colliders[1]=NPCParent;
Colliders[2]=Door;

global.haskey=false;
//set initial player appearance
sprite_index=player_forward;
image_index=1;
image_speed=0;

function SetChatMessage(text){
	canvas.SetChatMessage(text);
}

function NPCInteraction(){
if(distance_to_object(Npc_1)<=20){
	if(keyboard_check_pressed(vk_space)){
		audio_play_sound(show_msg,1,false);
		if(!global.haskey){
			SetChatMessage("The key is some way east of there");
		}else{
			SetChatMessage("Great, my friend will tell you how to escape this place");
		}
		
	}
}else if(distance_to_object(Npc_2)<=20){
	if(keyboard_check_pressed(vk_space)){
		audio_play_sound(show_msg,1,false);
		SetChatMessage("The exit is north of here, hidden behind a tree");
	}
}else if(distance_to_object(Npc_1)>=80 &&distance_to_object(Npc_2)>=80 ){
	canvas.draw=false;
}
}

