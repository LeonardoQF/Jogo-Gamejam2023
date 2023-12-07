draw_set_font(fnt_menu)
var _texto1 = string_copy(text1, 0, text_speed_1)
var _texto2 = string_copy(text2,0,text_speed_2)
draw_set_color(c_white)

var _width_gui = display_get_gui_width()
var _height_gui = display_get_gui_height()

var _x1 = _width_gui/2
var _y1 = _height_gui/2

draw_set_halign(fa_center)
draw_set_valign(fa_middle)



	
	
draw_text_ext(_x1, _y1, _texto1, 30, 150-margem * 2)
draw_text_ext(_x1, _y1, _texto2, 30, 300 - margem * 2)

draw_set_font(-1)


	
	

	
	
	


draw_set_font(-1) 