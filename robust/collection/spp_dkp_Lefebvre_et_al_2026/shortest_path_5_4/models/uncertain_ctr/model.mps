NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_5_4/models/uncertain_ctr/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[4]
 E  flow_cons_source
 E  flow_cons_target
 G  c_21448
COLUMNS
    z          OBJ        1
    z          c_21448    1
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        0
    y[0,1]     flow_cons_source -1
    y[0,1]     c_21448    -24.33
    y[0,1]     flow_cons_inner_nodes[0] -1
    y[0,2]     OBJ        0
    y[0,2]     flow_cons_target 1
    y[0,2]     c_21448    -69.57
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        0
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,3]     c_21448    -73.55
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[0,4]     OBJ        0
    y[0,4]     flow_cons_inner_nodes[4] 1
    y[0,4]     c_21448    -25.08
    y[0,4]     flow_cons_inner_nodes[0] -1
    y[1,0]     OBJ        0
    y[1,0]     flow_cons_source 1
    y[1,0]     c_21448    -24.33
    y[1,0]     flow_cons_inner_nodes[0] 1
    y[1,4]     OBJ        0
    y[1,4]     c_21448    -14.04
    y[1,4]     flow_cons_source 1
    y[1,4]     flow_cons_inner_nodes[4] 1
    y[2,0]     OBJ        0
    y[2,0]     flow_cons_target -1
    y[2,0]     c_21448    -69.57
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,3]     OBJ        0
    y[2,3]     c_21448    -37.48
    y[2,3]     flow_cons_target -1
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,4]     OBJ        0
    y[2,4]     c_21448    -71.84
    y[2,4]     flow_cons_target -1
    y[2,4]     flow_cons_inner_nodes[4] 1
    y[3,0]     OBJ        0
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,0]     c_21448    -73.55
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,2]     OBJ        0
    y[3,2]     c_21448    -37.48
    y[3,2]     flow_cons_target 1
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,4]     OBJ        0
    y[3,4]     c_21448    -62.51
    y[3,4]     flow_cons_inner_nodes[4] 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[4,0]     OBJ        0
    y[4,0]     flow_cons_inner_nodes[4] -1
    y[4,0]     c_21448    -25.08
    y[4,0]     flow_cons_inner_nodes[0] 1
    y[4,1]     OBJ        0
    y[4,1]     c_21448    -14.04
    y[4,1]     flow_cons_source -1
    y[4,1]     flow_cons_inner_nodes[4] -1
    y[4,2]     OBJ        0
    y[4,2]     c_21448    -71.84
    y[4,2]     flow_cons_target 1
    y[4,2]     flow_cons_inner_nodes[4] -1
    y[4,3]     OBJ        0
    y[4,3]     c_21448    -62.51
    y[4,3]     flow_cons_inner_nodes[4] -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_inner_nodes[4] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
    RHS       c_21448    -0
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
 LO BND       z          0
 UP BND       z          915.728
ENDATA
