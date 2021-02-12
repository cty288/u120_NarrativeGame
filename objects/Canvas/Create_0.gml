/// @description Insert description here
// You can write your code in this editor
player=instance_find(Player,0);
msg="";
draw=false;
positionX=0;
positionY=0;

function SetChatMessage(text){
	positionX=player.x-160;
	positionY=player.y-120;
	show_debug_message("adwda");
	msg=text;
	draw=true;
	
}