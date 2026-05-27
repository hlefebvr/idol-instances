NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_5_5/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[1]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[4]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,3]     OBJ        24.08
    y[0,3]     flow_cons_source 1
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,4]     OBJ        45.62
    y[0,4]     flow_cons_source 1
    y[0,4]     flow_cons_inner_nodes[4] 1
    y[1,2]     OBJ        4.24
    y[1,2]     flow_cons_target 1
    y[1,2]     flow_cons_inner_nodes[1] -1
    y[1,3]     OBJ        39.85
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[1,3]     flow_cons_inner_nodes[1] -1
    y[1,4]     OBJ        23.26
    y[1,4]     flow_cons_inner_nodes[4] 1
    y[1,4]     flow_cons_inner_nodes[1] -1
    y[2,1]     OBJ        4.24
    y[2,1]     flow_cons_target -1
    y[2,1]     flow_cons_inner_nodes[1] 1
    y[2,3]     OBJ        43.66
    y[2,3]     flow_cons_target -1
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,4]     OBJ        25
    y[2,4]     flow_cons_target -1
    y[2,4]     flow_cons_inner_nodes[4] 1
    y[3,0]     OBJ        24.08
    y[3,0]     flow_cons_source -1
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,1]     OBJ        39.85
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,1]     flow_cons_inner_nodes[1] 1
    y[3,2]     OBJ        43.66
    y[3,2]     flow_cons_target 1
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,4]     OBJ        27.8
    y[3,4]     flow_cons_inner_nodes[4] 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[4,0]     OBJ        45.62
    y[4,0]     flow_cons_source -1
    y[4,0]     flow_cons_inner_nodes[4] -1
    y[4,1]     OBJ        23.26
    y[4,1]     flow_cons_inner_nodes[4] -1
    y[4,1]     flow_cons_inner_nodes[1] 1
    y[4,2]     OBJ        25
    y[4,2]     flow_cons_target 1
    y[4,2]     flow_cons_inner_nodes[4] -1
    y[4,3]     OBJ        27.8
    y[4,3]     flow_cons_inner_nodes[4] -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[1] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_inner_nodes[4] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,3]     0
 UI BND       y[0,3]     1
 LI BND       y[0,4]     0
 UI BND       y[0,4]     1
 LI BND       y[1,2]     0
 UI BND       y[1,2]     1
 LI BND       y[1,3]     0
 UI BND       y[1,3]     1
 LI BND       y[1,4]     0
 UI BND       y[1,4]     1
 LI BND       y[2,1]     0
 UI BND       y[2,1]     1
 LI BND       y[2,3]     0
 UI BND       y[2,3]     1
 LI BND       y[2,4]     0
 UI BND       y[2,4]     1
 LI BND       y[3,0]     0
 UI BND       y[3,0]     1
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LI BND       y[3,4]     0
 UI BND       y[3,4]     1
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,1]     0
 UI BND       y[4,1]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,3]     0
 UI BND       y[4,3]     1
ENDATA
