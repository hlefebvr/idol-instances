NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_5_6/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[1]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        62.27
    y[0,1]     flow_cons_inner_nodes[1] 1
    y[0,1]     flow_cons_inner_nodes[0] -1
    y[0,2]     OBJ        35
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        68.88
    y[0,3]     flow_cons_source -1
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[0,4]     OBJ        17.09
    y[0,4]     flow_cons_target 1
    y[0,4]     flow_cons_inner_nodes[0] -1
    y[1,0]     OBJ        62.27
    y[1,0]     flow_cons_inner_nodes[1] -1
    y[1,0]     flow_cons_inner_nodes[0] 1
    y[1,3]     OBJ        37.2
    y[1,3]     flow_cons_source -1
    y[1,3]     flow_cons_inner_nodes[1] -1
    y[1,4]     OBJ        67.18
    y[1,4]     flow_cons_target 1
    y[1,4]     flow_cons_inner_nodes[1] -1
    y[2,0]     OBJ        35
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,3]     OBJ        62.43
    y[2,3]     flow_cons_source -1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        51.62
    y[2,4]     flow_cons_target 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        68.88
    y[3,0]     flow_cons_source 1
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,1]     OBJ        37.2
    y[3,1]     flow_cons_source 1
    y[3,1]     flow_cons_inner_nodes[1] 1
    y[3,2]     OBJ        62.43
    y[3,2]     flow_cons_source 1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[4,0]     OBJ        17.09
    y[4,0]     flow_cons_target -1
    y[4,0]     flow_cons_inner_nodes[0] 1
    y[4,1]     OBJ        67.18
    y[4,1]     flow_cons_target -1
    y[4,1]     flow_cons_inner_nodes[1] 1
    y[4,2]     OBJ        51.62
    y[4,2]     flow_cons_target -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[1] -0
    RHS       flow_cons_inner_nodes[2] -0
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
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
 LI BND       y[1,3]     0
 UI BND       y[1,3]     1
 LI BND       y[1,4]     0
 UI BND       y[1,4]     1
 LI BND       y[2,0]     0
 UI BND       y[2,0]     1
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
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,1]     0
 UI BND       y[4,1]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
ENDATA
