transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gabriel.dunkel.N305-3033103/Documents/Faculdade/DLP/Projeto 2/contador.vhd}
vcom -93 -work work {C:/Users/gabriel.dunkel.N305-3033103/Documents/Faculdade/DLP/Projeto 2/contador_signal.vhd}
vcom -93 -work work {C:/Users/gabriel.dunkel.N305-3033103/Documents/Faculdade/DLP/Projeto 2/decodificador.vhd}

