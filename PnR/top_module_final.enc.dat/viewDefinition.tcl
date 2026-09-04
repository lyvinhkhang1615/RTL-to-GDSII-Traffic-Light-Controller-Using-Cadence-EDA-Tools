create_library_set -name fast_set\
   -timing\
    [list /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/LIBS/GPDK045/timing/fast.lib]
create_library_set -name slow_set\
   -timing\
    [list /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/LIBS/GPDK045/timing/slow.lib]
create_rc_corner -name rc_best\
   -cap_table /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/capTable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0\
   -qx_tech_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/qrcTechFile\
   -qx_conf_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/qrc.conf
create_rc_corner -name rc_worst\
   -cap_table /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/capTable\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/qrcTechFile\
   -qx_conf_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/EDI/DESIGN/GPDK/TECH/qrc.conf
create_delay_corner -name slow_corner\
   -library_set slow_set\
   -rc_corner rc_worst
create_delay_corner -name fast_corner\
   -library_set fast_set\
   -rc_corner rc_best
create_constraint_mode -name func\
   -sdc_files\
    [list ouput/top_module_routing.enc.dat/mmmc/modes/func/func.sdc]
create_analysis_view -name fast_view -constraint_mode func -delay_corner fast_corner
create_analysis_view -name slow_view -constraint_mode func -delay_corner slow_corner
set_analysis_view -setup [list slow_view] -hold [list fast_view]
