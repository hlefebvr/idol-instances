NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_6_10/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[5]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,2]     OBJ        49.09
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        18.11
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[0,4]     OBJ        22.02
    y[0,4]     flow_cons_target 1
    y[0,4]     flow_cons_inner_nodes[0] -1
    y[0,5]     OBJ        24.76
    y[0,5]     flow_cons_inner_nodes[5] 1
    y[0,5]     flow_cons_inner_nodes[0] -1
    y[1,2]     OBJ        35.85
    y[1,2]     flow_cons_source 1
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[1,5]     OBJ        58
    y[1,5]     flow_cons_source 1
    y[1,5]     flow_cons_inner_nodes[5] 1
    y[2,0]     OBJ        49.09
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,1]     OBJ        35.85
    y[2,1]     flow_cons_source -1
    y[2,1]     flow_cons_inner_nodes[2] -1
    y[2,3]     OBJ        43.93
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        51.62
    y[2,4]     flow_cons_target 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[2,5]     OBJ        25.63
    y[2,5]     flow_cons_inner_nodes[5] 1
    y[2,5]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        18.11
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,2]     OBJ        43.93
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[3,4]     OBJ        38.48
    y[3,4]     flow_cons_target 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[3,5]     OBJ        19
    y[3,5]     flow_cons_inner_nodes[5] 1
    y[3,5]     flow_cons_inner_nodes[3] -1
    y[4,0]     OBJ        22.02
    y[4,0]     flow_cons_target -1
    y[4,0]     flow_cons_inner_nodes[0] 1
    y[4,2]     OBJ        51.62
    y[4,2]     flow_cons_target -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    y[4,3]     OBJ        38.48
    y[4,3]     flow_cons_target -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    y[4,5]     OBJ        35.13
    y[4,5]     flow_cons_target -1
    y[4,5]     flow_cons_inner_nodes[5] 1
    y[5,0]     OBJ        24.76
    y[5,0]     flow_cons_inner_nodes[5] -1
    y[5,0]     flow_cons_inner_nodes[0] 1
    y[5,1]     OBJ        58
    y[5,1]     flow_cons_source -1
    y[5,1]     flow_cons_inner_nodes[5] -1
    y[5,2]     OBJ        25.63
    y[5,2]     flow_cons_inner_nodes[5] -1
    y[5,2]     flow_cons_inner_nodes[2] 1
    y[5,3]     OBJ        19
    y[5,3]     flow_cons_inner_nodes[5] -1
    y[5,3]     flow_cons_inner_nodes[3] 1
    y[5,4]     OBJ        35.13
    y[5,4]     flow_cons_target 1
    y[5,4]     flow_cons_inner_nodes[5] -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_inner_nodes[5] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,2]     0
 UI BND       y[0,2]     1
 LI BND       y[0,3]     0
 UI BND       y[0,3]     1
 LI BND       y[0,4]     0
 UI BND       y[0,4]     1
 LI BND       y[0,5]     0
 UI BND       y[0,5]     1
 LI BND       y[1,2]     0
 UI BND       y[1,2]     1
 LI BND       y[1,5]     0
 UI BND       y[1,5]     1
 LI BND       y[2,0]     0
 UI BND       y[2,0]     1
 LI BND       y[2,1]     0
 UI BND       y[2,1]     1
 LI BND       y[2,3]     0
 UI BND       y[2,3]     1
 LI BND       y[2,4]     0
 UI BND       y[2,4]     1
 LI BND       y[2,5]     0
 UI BND       y[2,5]     1
 LI BND       y[3,0]     0
 UI BND       y[3,0]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LI BND       y[3,4]     0
 UI BND       y[3,4]     1
 LI BND       y[3,5]     0
 UI BND       y[3,5]     1
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,3]     0
 UI BND       y[4,3]     1
 LI BND       y[4,5]     0
 UI BND       y[4,5]     1
 LI BND       y[5,0]     0
 UI BND       y[5,0]     1
 LI BND       y[5,1]     0
 UI BND       y[5,1]     1
 LI BND       y[5,2]     0
 UI BND       y[5,2]     1
 LI BND       y[5,3]     0
 UI BND       y[5,3]     1
 LI BND       y[5,4]     0
 UI BND       y[5,4]     1
ENDATA
