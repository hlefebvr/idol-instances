NAME /Users/henri/Research/solvers/instances/idol-instances/robust/collection/spp_dkp_Lefebvre_et_al_2026/shortest_path_2_5/models/uncertain_obj/model
ROWS
 N  OBJ
 E  flow_cons_source
 E  flow_cons_target
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]     OBJ        62.8
    y[0,1]     flow_cons_target 1
    y[0,1]     flow_cons_source 1
    y[1,0]     OBJ        62.8
    y[1,0]     flow_cons_target -1
    y[1,0]     flow_cons_source -1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS       flow_cons_source 1
    RHS       flow_cons_target 1
BOUNDS
 LI BND       y[0,1]     0
 UI BND       y[0,1]     1
 LI BND       y[1,0]     0
 UI BND       y[1,0]     1
ENDATA
