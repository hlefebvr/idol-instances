NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_2_10/models/uncertain_ctr/model
ROWS
 N  OBJ
 E  flow_cons_source
 E  flow_cons_target
 G  c_4368
COLUMNS
    z          OBJ        1
    z          c_4368     1
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        0
    y[0,1]     flow_cons_target 1
    y[0,1]     c_4368     -82.73
    y[0,1]     flow_cons_source 1
    y[1,0]     OBJ        0
    y[1,0]     flow_cons_target -1
    y[1,0]     c_4368     -82.73
    y[1,0]     flow_cons_source -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
    RHS       c_4368     -0
BOUNDS
 LI BND       y[0,1]     0
 UI BND       y[0,1]     1
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
 LO BND       z          0
 UP BND       z          200.207
ENDATA
