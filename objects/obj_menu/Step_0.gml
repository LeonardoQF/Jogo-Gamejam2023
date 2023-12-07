var _mouse_pressed = mouse_check_button(mb_left)
if start{
if _mouse_pressed == 1{
	
	timer_min += 1
	tempo_correndo = true
	start = false
	show_debug_message("ola")
	
}
}

if timer_min > 0{
	
	if tempo_correndo{
	timer_min += 1
	}
	
	
	if timer_min == timer_max{
		
		text_speed_1 += 0.15
		tempo_correndo = false
		
		
	}
	if text_speed_1 > string_length(text1)+1{
		
		tempo_correndo = true
		text_speed_1 = 0
		text_acabou = true
	}
	
	if text_speed_1 == 0 and text_acabou{
	
		
	if _mouse_pressed == 1{
		
		
		time_current = timer_min
		
	}	
			

		
	if (timer_min - time_current) > 200{
		
		text_speed_2 += 0.15
	}
	
	}	
		
	

}