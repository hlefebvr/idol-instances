NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_6_5/models/uncertain_ctr/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[1]
 E  flow_cons_inner_nodes[2]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_inner_nodes[4]
 E  flow_cons_source
 E  flow_cons_target
 G  c_16644
COLUMNS
    z          OBJ        1
    z          c_16644    1
    MARKER    'MARKER'                 'INTORG'
    y[0,3]     OBJ        0
    y[0,3]     c_16644    -24.08
    y[0,3]     flow_cons_source 1
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,4]     OBJ        0
    y[0,4]     c_16644    -45.62
    y[0,4]     flow_cons_source 1
    y[0,4]     flow_cons_inner_nodes[4] 1
    y[1,2]     OBJ        0
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[1,2]     c_16644    -4.24
    y[1,2]     flow_cons_inner_nodes[1] -1
    y[1,3]     OBJ        0
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[1,3]     c_16644    -39.85
    y[1,3]     flow_cons_inner_nodes[1] -1
    y[1,4]     OBJ        0
    y[1,4]     flow_cons_inner_nodes[4] 1
    y[1,4]     c_16644    -23.26
    y[1,4]     flow_cons_inner_nodes[1] -1
    y[1,5]     OBJ        0
    y[1,5]     c_16644    -9.43
    y[1,5]     flow_cons_target 1
    y[1,5]     flow_cons_inner_nodes[1] -1
    y[2,1]     OBJ        0
    y[2,1]     flow_cons_inner_nodes[2] -1
    y[2,1]     c_16644    -4.24
    y[2,1]     flow_cons_inner_nodes[1] 1
    y[2,3]     OBJ        0
    y[2,3]     c_16644    -43.66
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[2,3]     flow_cons_inner_nodes[2] -1
    y[2,4]     OBJ        0
    y[2,4]     c_16644    -25
    y[2,4]     flow_cons_inner_nodes[4] 1
    y[2,4]     flow_cons_inner_nodes[2] -1
    y[2,5]     OBJ        0
    y[2,5]     c_16644    -9.43
    y[2,5]     flow_cons_target 1
    y[2,5]     flow_cons_inner_nodes[2] -1
    y[3,0]     OBJ        0
    y[3,0]     c_16644    -24.08
    y[3,0]     flow_cons_source -1
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,1]     OBJ        0
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,1]     c_16644    -39.85
    y[3,1]     flow_cons_inner_nodes[1] 1
    y[3,2]     OBJ        0
    y[3,2]     c_16644    -43.66
    y[3,2]     flow_cons_inner_nodes[3] -1
    y[3,2]     flow_cons_inner_nodes[2] 1
    y[3,4]     OBJ        0
    y[3,4]     c_16644    -27.8
    y[3,4]     flow_cons_inner_nodes[4] 1
    y[3,4]     flow_cons_inner_nodes[3] -1
    y[3,5]     OBJ        0
    y[3,5]     c_16644    -46.53
    y[3,5]     flow_cons_target 1
    y[3,5]     flow_cons_inner_nodes[3] -1
    y[4,0]     OBJ        0
    y[4,0]     c_16644    -45.62
    y[4,0]     flow_cons_source -1
    y[4,0]     flow_cons_inner_nodes[4] -1
    y[4,1]     OBJ        0
    y[4,1]     flow_cons_inner_nodes[4] -1
    y[4,1]     c_16644    -23.26
    y[4,1]     flow_cons_inner_nodes[1] 1
    y[4,2]     OBJ        0
    y[4,2]     c_16644    -25
    y[4,2]     flow_cons_inner_nodes[4] -1
    y[4,2]     flow_cons_inner_nodes[2] 1
    y[4,3]     OBJ        0
    y[4,3]     c_16644    -27.8
    y[4,3]     flow_cons_inner_nodes[4] -1
    y[4,3]     flow_cons_inner_nodes[3] 1
    y[4,5]     OBJ        0
    y[4,5]     c_16644    -32.65
    y[4,5]     flow_cons_target 1
    y[4,5]     flow_cons_inner_nodes[4] -1
    y[5,1]     OBJ        0
    y[5,1]     c_16644    -9.43
    y[5,1]     flow_cons_target -1
    y[5,1]     flow_cons_inner_nodes[1] 1
    y[5,2]     OBJ        0
    y[5,2]     c_16644    -9.43
    y[5,2]     flow_cons_target -1
    y[5,2]     flow_cons_inner_nodes[2] 1
    y[5,3]     OBJ        0
    y[5,3]     c_16644    -46.53
    y[5,3]     flow_cons_target -1
    y[5,3]     flow_cons_inner_nodes[3] 1
    y[5,4]     OBJ        0
    y[5,4]     c_16644    -32.65
    y[5,4]     flow_cons_target -1
    y[5,4]     flow_cons_inner_nodes[4] 1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[1] -0
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_inner_nodes[4] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
    RHS       c_16644    -0
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
 LI BND       y[1,5]     0
 UI BND       y[1,5]     1
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
 LI BND       y[4,0]     0
 UI BND       y[4,0]     1
 LI BND       y[4,1]     0
 UI BND       y[4,1]     1
 LI BND       y[4,2]     0
 UI BND       y[4,2]     1
 LI BND       y[4,3]     0
 UI BND       y[4,3]     1
 LI BND       y[4,5]     0
 UI BND       y[4,5]     1
 LI BND       y[5,1]     0
 UI BND       y[5,1]     1
 LI BND       y[5,2]     0
 UI BND       y[5,2]     1
 LI BND       y[5,3]     0
 UI BND       y[5,3]     1
 LI BND       y[5,4]     0
 UI BND       y[5,4]     1
 LO BND       z          0
 UP BND       z          802.351
ENDATA
