//change player's depth when player goes into the bush
if(place_meeting(x,y,player)){
	show_debug_message(player.y-y);
	if(player.y-y>=86){
		player.depth=0;
	}else{
		player.depth=200;
	}
}