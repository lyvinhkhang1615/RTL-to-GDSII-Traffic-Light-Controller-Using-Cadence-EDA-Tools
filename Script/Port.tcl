#--------------------------------------------------
# Input Pins (Left)
#--------------------------------------------------
editPin \
    -pin {clk_50mhz rst} \
    -side Left \
    -layer M3 \
    -spreadType RANGE \
    -start {10 5} \
    -end {10 55} \
 -pinWidth 0.2 \
    -pinDepth 2.0\
    -fixedPin

#--------------------------------------------------
# Output Pins (Right)
#--------------------------------------------------
editPin \
    -pin {LED_1[0] LED_1[1] LED_1[2] \
          LED_2[0] LED_2[1] LED_2[2] \
          seg1_ch[0] seg1_ch[1] seg1_ch[2] seg1_ch[3] seg1_ch[4] seg1_ch[5] seg1_ch[6] \
          seg1_dv[0] seg1_dv[1] seg1_dv[2] seg1_dv[3] seg1_dv[4] seg1_dv[5] seg1_dv[6] \
          seg2_ch[0] seg2_ch[1] seg2_ch[2] seg2_ch[3] seg2_ch[4] seg2_ch[5] seg2_ch[6] \
          seg2_dv[0] seg2_dv[1] seg2_dv[2] seg2_dv[3] seg2_dv[4] seg2_dv[5] seg2_dv[6]} \
    -side Right \
    -layer M3 \
    -spreadType RANGE \
    -start {0 10} \
    -end {10  20} \
  -pinWidth 0.2 \
    -pinDepth 2.0\
    -fixedPin
