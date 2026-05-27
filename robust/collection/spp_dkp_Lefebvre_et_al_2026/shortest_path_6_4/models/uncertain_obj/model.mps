NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_6_4/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[4]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        24.33
    y[0,1]     flow_cons_source -1
    y[0,1]     flow_cons_inner_nodes[0] -1
    y[0,2]     OBJ        69.57
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        73.55
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[0,4]     OBJ        25.08
    y[0,4]     flow_cons_inner_nodes[4] 1
    y[0,4]     flow_cons_inner_nodes[0] -1
    y[0,5]     OBJ        75.43
    y[0,5]     flow_cons_target 1
    y[0,5]     flow_cons_inner_nodes[0] -1
    y[1,0]     OBJ        24.33
    y[1,0]     flow_cons_source 1
    y[1,0]     flow_cons_inner_nodes[0] 1
    y[1,3]     OBJ        76.53
    y[1,3]     flow_cons_source 1
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[1,4]     OBJ        14.04
    y[1,4]     flow_cons_source 1
    y[1,4]     flow_cons_inner_nodes[4] 1
    y[2,0]     OBJ        69.57
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,3]     OBJ        37.48
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        71.84
    y[2,4]     flow_cons_inner_nodes[4] 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[2,5]     OBJ        25.96
    y[2,5]     flow_cons_target 1
    y[2,5]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        73.55
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,1]     OBJ        76.53
    y[3,1]     flow_cons_source -1
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,2]     OBJ        37.48
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[3,4]     OBJ        62.51
    y[3,4]     flow_cons_inner_nodes[4] 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[3,5]     OBJ        63.35
    y[3,5]     flow_cons_target 1
    y[3,5]     flow_cons_inner_nodes[3] -1
    y[4,0]     OBJ        25.08
    y[4,0]     flow_cons_inner_nodes[4] -1
    y[4,0]     flow_cons_inner_nodes[0] 1
    y[4,1]     OBJ        14.04
    y[4,1]     flow_cons_source -1
    y[4,1]     flow_cons_inner_nodes[4] -1
    y[4,2]     OBJ        71.84
    y[4,2]     flow_cons_inner_nodes[4] -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    y[4,3]     OBJ        62.51
    y[4,3]     flow_cons_inner_nodes[4] -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    y[5,0]     OBJ        75.43
    y[5,0]     flow_cons_target -1
    y[5,0]     flow_cons_inner_nodes[0] 1
    y[5,2]     OBJ        25.96
    y[5,2]     flow_cons_target -1
    y[5,2]     flow_cons_inner_nodes[2] 1
    y[5,3]     OBJ        63.35
    y[5,3]     flow_cons_target -1
    y[5,3]     flow_cons_inner_nodes[3] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_inner_nodes[4] -0
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
 LI BND       y[2,5]     0
 UI BND       y[2,5]     1
 LI BND       y[3,0]     0
 UI BND       y[3,0]     1
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LI BND       y[3,4]     0
 UI BND       y[3,4]     1
 LI BND       y[3,5]     0
 UI BND       y[3,5]     1
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,1]     0
 UI BND       y[4,1]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,3]     0
 UI BND       y[4,3]     1
 LI BND       y[5,0]     0
 UI BND       y[5,0]     1
 LI BND       y[5,2]     0
 UI BND       y[5,2]     1
 LI BND       y[5,3]     0
 UI BND       y[5,3]     1
ENDATA
