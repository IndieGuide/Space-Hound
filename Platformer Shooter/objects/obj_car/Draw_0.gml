l += 5



draw_set_color(c_red)

draw_lensflare(x + (sin(degtorad(direction))*10),y + (cos(degtorad(direction))*10),200,2,2,2,5,sin(degtorad(l)))


draw_set_color(c_blue)

draw_lensflare(x - (sin(degtorad(direction))*10),y -(cos(degtorad(direction))*10),200,2,2,2,5,cos(degtorad(l)))

