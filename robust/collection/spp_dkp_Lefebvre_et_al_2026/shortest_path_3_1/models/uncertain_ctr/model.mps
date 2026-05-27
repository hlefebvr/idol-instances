NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_3_1/models/uncertain_ctr/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[2]
 E  flow_cons_source
 E  flow_cons_target
 G  c_4410
COLUMNS
    z          OBJ        1
    z          c_4410     1
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        0
    y[0,1]     c_4410     -104.62
    y[0,1]     flow_cons_target 1
    y[0,1]     flow_cons_source 1
    y[0,2]     OBJ        0
    y[0,2]     c_4410     -26.93
    y[0,2]     flow_cons_source 1
    y[0,2]     flow_cons_inner_nodes[2] 1
    y[1,0]     OBJ        0
    y[1,0]     c_4410     -104.62
    y[1,0]     flow_cons_target -1
    y[1,0]     flow_cons_source -1
    y[1,2]     OBJ        0
    y[1,2]     c_4410     -80.53
    y[1,2]     flow_cons_target -1
    y[1,2]     flow_cons_inner_nodes[2] 1
    y[2,0]     OBJ        0
    y[2,0]     c_4410     -26.93
    y[2,0]     flow_cons_source -1
    y[2,0]     flow_cons_inner_nodes[2] -1
    y[2,1]     OBJ        0
    y[2,1]     c_4410     -80.53
    y[2,1]     flow_cons_target 1
    y[2,1]     flow_cons_inner_nodes[2] -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[2] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
    RHS       c_4410     -0
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
 LO BND       z          0
 UP BND       z          513.234
ENDATA
