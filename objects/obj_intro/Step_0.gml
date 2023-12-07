var _mouse_pressed = mouse_check_button_pressed(mb_left)
if start{
	if _mouse_pressed == 1 {

    tempo_correndo = true
    start = false

    show_debug_message("ola")
    narrando = false
	}
}



if tempo_correndo {
    timer_min += 1
}


if timer_min == timer_max {
    text_speed_1 += 0.20
    tempo_correndo = false
}


if text_speed_1 > string_length(text1) + 4 {
    text1 = ""
	if _mouse_pressed == 1 {
		narrando = true
	}
	if narrando {
		text_speed_2 += 0.20
		tempo_correndo = false
	}
}

if text_speed_2 > string_length(text2) + 6 {
    text2 = ""
	if _mouse_pressed == 1 {
		room_goto_next()
	}
}