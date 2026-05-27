NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_6_1/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[1]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[5]
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,2]     OBJ        26.93
    y[0,2]     flow_cons_source 1
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[0,3]     OBJ        65.19
    y[0,3]     flow_cons_source 1
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,5]     OBJ        23.41
    y[0,5]     flow_cons_source 1
    y[0,5]     flow_cons_inner_nodes[5] 1
    y[1,2]     OBJ        80.53
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[1,2]     flow_cons_inner_nodes[1] -1
    y[1,3]     OBJ        43.68
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[1,3]     flow_cons_inner_nodes[1] -1
    y[1,4]     OBJ        4
    y[1,4]     flow_cons_target 1
    y[1,4]     flow_cons_inner_nodes[1] -1
    y[1,5]     OBJ        86.31
    y[1,5]     flow_cons_inner_nodes[5] 1
    y[1,5]     flow_cons_inner_nodes[1] -1
    y[2,0]     OBJ        26.93
    y[2,0]     flow_cons_source -1
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,1]     OBJ        80.53
    y[2,1]     flow_cons_inner_nodes[2] -1
    y[2,1]     flow_cons_inner_nodes[1] 1
    y[2,3]     OBJ        38.95
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        82.49
    y[2,4]     flow_cons_target 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[2,5]     OBJ        6.08
    y[2,5]     flow_cons_inner_nodes[5] 1
    y[2,5]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        65.19
    y[3,0]     flow_cons_source -1
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,1]     OBJ        43.68
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,1]     flow_cons_inner_nodes[1] 1
    y[3,2]     OBJ        38.95
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[3,4]     OBJ        44.94
    y[3,4]     flow_cons_target 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[3,5]     OBJ        44.2
    y[3,5]     flow_cons_inner_nodes[5] 1
    y[3,5]     flow_cons_inner_nodes[3] -1
    y[4,1]     OBJ        4
    y[4,1]     flow_cons_target -1
    y[4,1]     flow_cons_inner_nodes[1] 1
    y[4,2]     OBJ        82.49
    y[4,2]     flow_cons_target -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    y[4,3]     OBJ        44.94
    y[4,3]     flow_cons_target -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    y[5,0]     OBJ        23.41
    y[5,0]     flow_cons_source -1
    y[5,0]     flow_cons_inner_nodes[5] -1
    y[5,1]     OBJ        86.31
    y[5,1]     flow_cons_inner_nodes[5] -1
    y[5,1]     flow_cons_inner_nodes[1] 1
    y[5,2]     OBJ        6.08
    y[5,2]     flow_cons_inner_nodes[5] -1
    y[5,2]     flow_cons_inner_nodes[2] 1
    y[5,3]     OBJ        44.2
    y[5,3]     flow_cons_inner_nodes[5] -1
    y[5,3]     flow_cons_inner_nodes[3] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[1] -0
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
 LI BND       y[0,5]     0
 UI BND       y[0,5]     1
 LI BND       y[1,2]     0
 UI BND       y[1,2]     1
 LI BND       y[1,3]     0
 UI BND       y[1,3]     1
 LI BND       y[1,4]     0
 UI BND       y[1,4]     1
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
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LI BND       y[3,4]     0
 UI BND       y[3,4]     1
 LI BND       y[3,5]     0
 UI BND       y[3,5]     1
 LI BND       y[4,1]     0
 UI BND       y[4,1]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,3]     0
 UI BND       y[4,3]     1
 LI BND       y[5,0]     0
 UI BND       y[5,0]     1
 LI BND       y[5,1]     0
 UI BND       y[5,1]     1
 LI BND       y[5,2]     0
 UI BND       y[5,2]     1
 LI BND       y[5,3]     0
 UI BND       y[5,3]     1
ENDATA
