vpx read setup information $env(WARD)/syn/logs/dc.log -type dclog
vpx read setup information $env(WARD)/syn/outputs/sbrccfroot_sbr_generic.vsdc -type vsdc
# Needed for 1273
#vpx add mapping model d04hgy2c* d04hgy23* d04hiy23* d04fkn03* d04frt03* d04frt43* d04fkn43* d04fkn0f* d04fkn0c* d04hiy2c* d04lkn83* d04lkn0f* d04lkn8f* d04f2j0c* d04hry23* -inverted -library -both
 #vpx add mapping model ctech_lib_clk_gate_te_rst_ss -inverted -design -golden
 #vpx set mapping method  -phasemapmodel -name first -BBOX_NAME_MATCH -nounreach

 vpx add mapping model e05fyy003* e05fyw043* e05fkw040* e05fmw203* e05fvw003* e05fmw20c* -inverted -library -both
 vpx add mapping model ctech_lib_clk_gate_te -inverted -design -golden
 vpx add mapping model ctech_lib_clk_gate_te_rst_ss -inverted -design -golden
 vpx add mapping model ctech_lib_clk_div2_reset -inverted -design -golden
 vpx set mapping method -phasemapmodel
