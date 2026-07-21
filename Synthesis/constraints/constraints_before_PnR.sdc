# Clock
create_clock -name clk_50mhz -period 20 [get_ports clk_50mhz]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks clk_50mhz]

# Asynchronous reset
set_false_path -from [get_ports rst]

# Design rule constraints
set_max_transition 0.2 [current_design]
set_max_fanout 16 [current_design]

# Output interface (nếu cần)
set_output_delay -max 2.0 -clock clk_50mhz [all_outputs]
set_output_delay -min 0.5 -clock clk_50mhz [all_outputs]

# Output load
set_load 0.05 [all_outputs]
