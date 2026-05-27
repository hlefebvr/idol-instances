NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_4_3/models/uncertain_ctr/model
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
 E  flow_cons_inner_nodes[3]
 E  flow_cons_source
 E  flow_cons_target
 G  c_1615
COLUMNS
    z          OBJ        1
    z          c_1615     1
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        0
    y[0,1]     c_1615     -35
    y[0,1]     flow_cons_source -1
    y[0,1]     flow_cons_inner_nodes[0] -1
    y[0,2]     OBJ        0
    y[0,2]     c_1615     -28.3
    y[0,2]     flow_cons_target 1
    y[0,2]     flow_cons_inner_nodes[0] -1
    y[0,3]     OBJ        0
    y[0,3]     c_1615     -51.79
    y[0,3]     flow_cons_inner_nodes[3] 1
    y[0,3]     flow_cons_inner_nodes[0] -1
    y[1,0]     OBJ        0
    y[1,0]     c_1615     -35
    y[1,0]     flow_cons_source 1
    y[1,0]     flow_cons_inner_nodes[0] 1
    y[1,3]     OBJ        0
    y[1,3]     flow_cons_source 1
    y[1,3]     c_1615     -35.51
    y[1,3]     flow_cons_inner_nodes[3] 1
    y[2,0]     OBJ        0
    y[2,0]     c_1615     -28.3
    y[2,0]     flow_cons_target -1
    y[2,0]     flow_cons_inner_nodes[0] 1
    y[2,3]     OBJ        0
    y[2,3]     flow_cons_target -1
    y[2,3]     c_1615     -48.84
    y[2,3]     flow_cons_inner_nodes[3] 1
    y[3,0]     OBJ        0
    y[3,0]     c_1615     -51.79
    y[3,0]     flow_cons_inner_nodes[3] -1
    y[3,0]     flow_cons_inner_nodes[0] 1
    y[3,1]     OBJ        0
    y[3,1]     flow_cons_source -1
    y[3,1]     c_1615     -35.51
    y[3,1]     flow_cons_inner_nodes[3] -1
    y[3,2]     OBJ        0
    y[3,2]     flow_cons_target 1
    y[3,2]     c_1615     -48.84
    y[3,2]     flow_cons_inner_nodes[3] -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_inner_nodes[0] -0
    RHS       flow_cons_inner_nodes[3] -0
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
    RHS       c_1615     -0
BOUNDS
 LI BND       y[0,1]     0
 UI BND       y[0,1]     1
 LI BND       y[0,2]     0
 UI BND       y[0,2]     1
 LI BND       y[0,3]     0
 UI BND       y[0,3]     1
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
 LI BND       y[1,3]     0
 UI BND       y[1,3]     1
 LI BND       y[2,0]     0
 UI BND       y[2,0]     1
 LI BND       y[2,3]     0
 UI BND       y[2,3]     1
 LI BND       y[3,0]     0
 UI BND       y[3,0]     1
 LI BND       y[3,1]     0
 UI BND       y[3,1]     1
 LI BND       y[3,2]     0
 UI BND       y[3,2]     1
 LO BND       z          0
 UP BND       z          482.645
ENDATA
