
var _texto = string_copy(text,0,text_speed)





draw_set_font(fnt_in_game)

draw_set_color(c_white)



draw_text_ext(target.x + margem, target.y + 30 + margem, _texto, 20, 150-margem * 2)

draw_set_font(-1) // resetar a fonte para que nao fica settada para sempre