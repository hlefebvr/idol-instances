NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_3_5/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[1]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        62.8
    y[0,1]     flow_cons_source 1
    y[0,1]     flow_cons_inner_nodes[1] 1
    y[0,2]     OBJ        66.29
    y[0,2]     flow_cons_target 1
    y[0,2]     flow_cons_source 1
    y[1,0]     OBJ        62.8
    y[1,0]     flow_cons_source -1
    y[1,0]     flow_cons_inner_nodes[1] -1
    y[1,2]     OBJ        4.24
    y[1,2]     flow_cons_target 1
    y[1,2]     flow_cons_inner_nodes[1] -1
    y[2,0]     OBJ        66.29
    y[2,0]     flow_cons_target -1
    y[2,0]     flow_cons_source -1
    y[2,1]     OBJ        4.24
    y[2,1]     flow_cons_target -1
    y[2,1]     flow_cons_inner_nodes[1] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[1] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,1]     0
 UI BND       y[0,1]     1
 LI BND       y[0,2]     0
 UI BND       y[0,2]     1
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
 LI BND       y[1,2]     0
 UI BND       y[1,2]     1
 LI BND       y[2,0]     0
 UI BND       y[2,0]     1
 LI BND       y[2,1]     0
 UI BND       y[2,1]     1
ENDATA
