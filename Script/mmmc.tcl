###############################################################
# mmmc.tcl
###############################################################

#--------------------------------------------------------------
# Library Sets
#--------------------------------------------------------------
create_library_set -name slow_set \
    -timing {/home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/LIBS/GPDK045/timing/slow.lib}

create_library_set -name fast_set \
    -timing {/home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/LIBS/GPDK045/timing/fast.lib}

#--------------------------------------------------------------
# Constraint Mode
#--------------------------------------------------------------
create_constraint_mode -name func \
    -sdc_files {/home/buet/Documents/mode_test/Synthesis/top_module_slow.sdc}

#--------------------------------------------------------------
# RC Corner
#--------------------------------------------------------------
create_rc_corner -name rc_worst \
    -cap_table /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/capTable \
    -T 125 \
    -qx_tech_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/qrcTechFile \
    -qx_conf_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/qrc.conf

create_rc_corner -name rc_best \
    -cap_table /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/capTable \
    -T 0 \
    -qx_tech_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/qrcTechFile \
    -qx_conf_file /home/buet/cadence/EDI/share/FoundationFlows/EXAMPLES/PROTO/LIBS/GPDK/TECH/qrc.conf

#--------------------------------------------------------------
# Delay Corner
#--------------------------------------------------------------
create_delay_corner -name slow_corner \
    -library_set slow_set \
    -rc_corner rc_worst

create_delay_corner -name fast_corner \
    -library_set fast_set \
    -rc_corner rc_best

#--------------------------------------------------------------
# Analysis View
#--------------------------------------------------------------
create_analysis_view -name slow_view \
    -constraint_mode func \
    -delay_corner slow_corner

create_analysis_view -name fast_view \
    -constraint_mode func \
    -delay_corner fast_corner

#--------------------------------------------------------------
# Active Analysis View
#--------------------------------------------------------------
set_analysis_view \
    -setup {slow_view} \
    -hold {fast_view}
