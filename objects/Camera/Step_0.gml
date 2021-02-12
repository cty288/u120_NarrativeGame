/// @description Insert description here
// You can write your code in this editor
targetX=player.x - camera_get_view_width(view_camera[0])/2;
targetY=player.y - camera_get_view_height(view_camera[0])/2;

cameraX=camera_get_view_x(view_camera[0]);
cameraY=camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0],lerp(cameraX,targetX,0.1),lerp(cameraY,targetY,0.1));
