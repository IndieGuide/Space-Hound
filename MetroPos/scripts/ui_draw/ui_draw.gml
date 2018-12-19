//@description ui_draw() 遍历注册的ui组件，运行它们的绘制代码
for (var i = 0;i < ui_list_size; i++) {
	with(ui_list[| i]) {
		call(do_draw);
	}         
}