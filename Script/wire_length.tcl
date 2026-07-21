###############################################################
# File: wire_length.tcl
# Purpose: Calculate total routed wire length of a net
###############################################################

proc get_dr_length {net} {

    # Clear current selection
    deselectAll

    # Select the specified net
    selectNet $net

    # Get lengths of all wire segments
    set length_list [dbGet selected.wires.length]

    # Initialize total length
    set total_length 0

    # Sum all segment lengths
    foreach len $length_list {
        set total_length [expr {$total_length + $len}]
    }

    # Clear selection
    deselectAll

    # Return total wire length
    return $total_length
}
