/// @description Insert description here
// You can write your code in this editor
if(draw){
	draw_set_font(Font1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_sprite(chatbox,0,positionX-10,positionY-5);
	draw_text_ext_transformed(positionX,positionY,msg,15,310,1.2,1.2,0);
	draw=true;
} 