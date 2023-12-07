draw_set_font(fnt_menu)



var _dist = 50

var _width_gui = display_get_gui_width()
var _height_gui = display_get_gui_height()
var _x1 = width_gui/2
var _y1 = height_gui/2

// pega a posicao do mouse e retorna uma coordenada de onde ele esta na tela
var _m_x = device_mouse_x_to_gui(0)
var _m_y = device_mouse_y_to_gui(0)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _margin = 50


for ( var _i = 0; i < op_max; i++){


    var _y2 = y1 + (margin * i)
    var _string_w = string_width(opcoes[i])
    var _string_h = string_height(opcoes[i])

    if point_in_rectangle(m.x, m.y, x1 - string_w/2, y2 - string_h/2, x1 + string_w/2, y2 + string_h/2){

        draw_set_color(c_red)
        var _item_menu = opcoes[i]
        if _item_menu == "START"{

            if mouse_check_button_pressed(mb_left){
                room_goto_next()
            }
        }
        if _item_menu == "CONFIGURACOES"{
            show_debug_message("CONFIGURACOES")
        }
        if _item_menu == "SAIR"{
            show_debug_message("SAIR")
        }
    }
    else{
        draw_set_color(c_white)
    }



    draw_text(width_gui/2,height_gui/2 + (dist * i),opcoes[i])



}


draw_set_font(-1)