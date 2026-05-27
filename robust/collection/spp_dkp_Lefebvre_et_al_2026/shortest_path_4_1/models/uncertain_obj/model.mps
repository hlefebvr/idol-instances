NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_4_1/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[3]
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
    y[1,2]     OBJ        80.53
    y[1,2]     flow_cons_target -1
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[1,3]     OBJ        43.68
    y[1,3]     flow_cons_target -1
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[2,0]     OBJ        26.93
    y[2,0]     flow_cons_source -1
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,1]     OBJ        80.53
    y[2,1]     flow_cons_target 1
    y[2,1]     flow_cons_inner_nodes[2] -1
    y[2,3]     OBJ        38.95
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        65.19
    y[3,0]     flow_cons_source -1
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,1]     OBJ        43.68
    y[3,1]     flow_cons_target 1
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,2]     OBJ        38.95
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,2]     flow_cons_inner_nodes[2] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,2]     0
 UI BND       y[0,2]     1
 LI BND       y[0,3]     0
 UI BND       y[0,3]     1
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
 LI BND       y[3,0]     0
 UI BND       y[3,0]     1
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
ENDATA
