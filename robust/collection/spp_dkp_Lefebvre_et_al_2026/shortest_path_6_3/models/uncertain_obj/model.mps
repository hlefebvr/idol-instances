NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_6_3/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[1]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[5]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        35
    y[0,1]     flow_cons_inner_nodes[1] 1
    y[0,1]     flow_cons_inner_nodes[0] -1
    y[0,2]     OBJ        28.3
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        51.79
    y[0,3]     flow_cons_source -1
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[0,4]     OBJ        26.25
    y[0,4]     flow_cons_target 1
    y[0,4]     flow_cons_inner_nodes[0] -1
    y[0,5]     OBJ        51.09
    y[0,5]     flow_cons_inner_nodes[5] 1
    y[0,5]     flow_cons_inner_nodes[0] -1
    y[1,0]     OBJ        35
    y[1,0]     flow_cons_inner_nodes[1] -1
    y[1,0]     flow_cons_inner_nodes[0] 1
    y[1,2]     OBJ        52.35
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[1,2]     flow_cons_inner_nodes[1] -1
    y[1,3]     OBJ        35.51
    y[1,3]     flow_cons_source -1
    y[1,3]     flow_cons_inner_nodes[1] -1
    y[2,0]     OBJ        28.3
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,1]     OBJ        52.35
    y[2,1]     flow_cons_inner_nodes[2] -1
    y[2,1]     flow_cons_inner_nodes[1] 1
    y[2,3]     OBJ        48.84
    y[2,3]     flow_cons_source -1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        23.02
    y[2,4]     flow_cons_target 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[2,5]     OBJ        25.63
    y[2,5]     flow_cons_inner_nodes[5] 1
    y[2,5]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        51.79
    y[3,0]     flow_cons_source 1
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,1]     OBJ        35.51
    y[3,1]     flow_cons_source 1
    y[3,1]     flow_cons_inner_nodes[1] 1
    y[3,2]     OBJ        48.84
    y[3,2]     flow_cons_source 1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[3,5]     OBJ        43.68
    y[3,5]     flow_cons_source 1
    y[3,5]     flow_cons_inner_nodes[5] 1
    y[4,0]     OBJ        26.25
    y[4,0]     flow_cons_target -1
    y[4,0]     flow_cons_inner_nodes[0] 1
    y[4,2]     OBJ        23.02
    y[4,2]     flow_cons_target -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    y[4,5]     OBJ        47.68
    y[4,5]     flow_cons_target -1
    y[4,5]     flow_cons_inner_nodes[5] 1
    y[5,0]     OBJ        51.09
    y[5,0]     flow_cons_inner_nodes[5] -1
    y[5,0]     flow_cons_inner_nodes[0] 1
    y[5,2]     OBJ        25.63
    y[5,2]     flow_cons_inner_nodes[5] -1
    y[5,2]     flow_cons_inner_nodes[2] 1
    y[5,3]     OBJ        43.68
    y[5,3]     flow_cons_source -1
    y[5,3]     flow_cons_inner_nodes[5] -1
    y[5,4]     OBJ        47.68
    y[5,4]     flow_cons_target 1
    y[5,4]     flow_cons_inner_nodes[5] -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[1] -0
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_inner_nodes[5] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,1]     0
 UI BND       y[0,1]     1
 LI BND       y[0,2]     0
 UI BND       y[0,2]     1
 LI BND       y[0,3]     0
 UI BND       y[0,3]     1
 LI BND       y[0,4]     0
 UI BND       y[0,4]     1
 LI BND       y[0,5]     0
 UI BND       y[0,5]     1
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
 LI BND       y[1,2]     0
 UI BND       y[1,2]     1
 LI BND       y[1,3]     0
 UI BND       y[1,3]     1
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
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LI BND       y[3,5]     0
 UI BND       y[3,5]     1
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,5]     0
 UI BND       y[4,5]     1
 LI BND       y[5,0]     0
 UI BND       y[5,0]     1
 LI BND       y[5,2]     0
 UI BND       y[5,2]     1
 LI BND       y[5,3]     0
 UI BND       y[5,3]     1
 LI BND       y[5,4]     0
 UI BND       y[5,4]     1
ENDATA
