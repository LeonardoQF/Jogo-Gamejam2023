// Efeito maquina de escrever



if collision_circle(target.x, target.y, target.sprite_width/2, mouse,true,false){
if mouse_check_button(mb_left){
	
	mouse_clicked = true
	
}
}
		
if mouse_clicked{
	
	timer_min += 1
	
	if timer_min > timer_max{
		
		text_speed+=0.25
		
	}

}
	
	
