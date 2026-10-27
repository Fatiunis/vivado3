// IC Compiler II Version Y-2026.03-SP2 Verilog Writer
// Generated on 10/26/2026 at 15:33:50
// Library Name: alu_wrapper_lib.ndm
// Block Name: alu_wrapper
// User Label: 
// Write Command: write_verilog outputs/alu_wrapper_post_route.v
module alu_wrapper ( clk , rst_n , a_in , b_in , alu_ctrl_in , result_out , 
    flags_out ) ;
input  clk ;
input  rst_n ;
input  [15:0] a_in ;
input  [15:0] b_in ;
input  [2:0] alu_ctrl_in ;
output [15:0] result_out ;
output [3:0] flags_out ;

wire [15:0] a_reg ;
wire [15:1] b_reg ;
wire [2:0] alu_ctrl_reg ;
wire [15:0] my_alu_or_bus ;
wire [15:0] my_alu_and_bus ;

assign flags_out[3] = result_out[15] ;

DFFRBQX1TAS7 R_161 ( .D ( a_in[15] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[15] ) ) ;
DFFRBQX1TAS7 b_reg_reg_15_ ( .D ( b_in[15] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[15] ) ) ;
DFFRBQX1TAS7 b_reg_reg_14_ ( .D ( b_in[14] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[14] ) ) ;
DFFRBQX2TAS7 b_reg_reg_13_ ( .D ( b_in[13] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[13] ) ) ;
DFFRBQX2TAS7 alu_ctrl_reg_reg_2_ ( .D ( alu_ctrl_in[2] ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( alu_ctrl_reg[2] ) ) ;
DFFRBQX1TAS7 alu_ctrl_reg_reg_1_ ( .D ( alu_ctrl_in[1] ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( alu_ctrl_reg[1] ) ) ;
DFFRBQX1TAS7 result_out_reg_1_ ( .D ( n224 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( result_out[1] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_15_ ( .I ( n63 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[15] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_14_ ( .I ( n61 ) , .E ( n962 ) , 
    .O ( my_alu_and_bus[14] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_13_ ( .I ( n59 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[13] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_12_ ( .I ( n57 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[12] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_11_ ( .I ( n55 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[11] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_10_ ( .I ( n53 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[10] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_9_ ( .I ( n51 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[9] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_8_ ( .I ( n49 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[8] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_6_ ( .I ( n45 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[6] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_4_ ( .I ( n41 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[4] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_2_ ( .I ( n37 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[2] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_1_ ( .I ( n35 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[1] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_0_ ( .I ( n33 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[0] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_15_ ( .I ( n31 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[15] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_14_ ( .I ( n29 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[14] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_13_ ( .I ( n27 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[13] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_12_ ( .I ( n25 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[12] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_11_ ( .I ( n23 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[11] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_10_ ( .I ( n21 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[10] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_9_ ( .I ( n19 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[9] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_8_ ( .I ( n17 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[8] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_6_ ( .I ( n13 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[6] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_5_ ( .I ( n11 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[5] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_4_ ( .I ( n9 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[4] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_3_ ( .I ( n7 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[3] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_2_ ( .I ( n5 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[2] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_1_ ( .I ( n3 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[1] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_0_ ( .I ( n1 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[0] ) ) ;
DFFRBQX4TAS7 R_422 ( .D ( alu_ctrl_in[0] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( alu_ctrl_reg[0] ) ) ;
DFFRBQX1TAS7 R_15 ( .D ( a_in[10] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[10] ) ) ;
DFFRBQX1TAS7 R_0 ( .D ( a_in[5] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[5] ) ) ;
DFFRBQX1TAS7 R_265 ( .D ( b_in[5] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[5] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_5_ ( .I ( n43 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[5] ) ) ;
DFFRBQX2TAS7 b_reg_reg_10_ ( .D ( b_in[10] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[10] ) ) ;
DFFRBQX2TAS7 b_reg_reg_9_ ( .D ( b_in[9] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[9] ) ) ;
DFFRBQX2TAS7 b_reg_reg_8_ ( .D ( b_in[8] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[8] ) ) ;
DFFRBQX2TAS7 b_reg_reg_7_ ( .D ( b_in[7] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[7] ) ) ;
DFFRBQX1TAS7 R_2 ( .D ( a_in[3] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[3] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_3_ ( .I ( n39 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[3] ) ) ;
DFFRBQX1TAS7 R_6 ( .D ( a_in[4] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[4] ) ) ;
DFFRBQX1TAS7 R_11 ( .D ( a_in[7] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[7] ) ) ;
TRIINVX1TAS7 my_alu_or_bus_tri_7_ ( .I ( n15 ) , .E ( n1108 ) , 
    .O ( my_alu_or_bus[7] ) ) ;
TRIINVX1TAS7 my_alu_and_bus_tri_7_ ( .I ( n47 ) , .E ( n1107 ) , 
    .O ( my_alu_and_bus[7] ) ) ;
DFFRBQX1TAS7 R_13 ( .D ( a_in[9] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[9] ) ) ;
DFFRBQX1TAS7 R_20 ( .D ( a_in[1] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[1] ) ) ;
DFFRBQX1TAS7 R_24 ( .D ( a_in[11] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[11] ) ) ;
DFFRBQX1TAS7 R_27 ( .D ( a_in[8] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[8] ) ) ;
DFFSBQX1TAS7 R_48 ( .D ( intadd_0_SUM_9_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1105 ) ) ;
DFFSBQX1TAS7 R_51 ( .D ( n1112 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1104 ) ) ;
DFFSBQX1TAS7 R_78 ( .D ( intadd_0_SUM_6_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1102 ) ) ;
DFFSBQX1TAS7 R_81 ( .D ( n1120 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1101 ) ) ;
DFFRBQX1TAS7 R_91 ( .D ( a_in[12] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[12] ) ) ;
DFFSBQX1TAS7 R_95 ( .D ( intadd_0_SUM_5_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1100 ) ) ;
DFFSBQX1TAS7 R_98 ( .D ( n1118 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1099 ) ) ;
DFFRBQX1TAS7 R_125 ( .D ( b_in[2] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[2] ) ) ;
DFFSBQX1TAS7 R_133 ( .D ( intadd_0_SUM_4_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1098 ) ) ;
DFFSBQX1TAS7 R_136 ( .D ( n1117 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1097 ) ) ;
DFFSBQX1TAS7 R_157 ( .D ( n1116 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1095 ) ) ;
DFFRBQX1TAS7 R_160 ( .D ( a_in[14] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[14] ) ) ;
DFFRBQX2TAS7 R_408 ( .D ( b_in[0] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n1109 ) ) ;
DFFRBQX1TAS7 R_201 ( .D ( a_in[13] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[13] ) ) ;
DFFRBQX2TAS7 R_219 ( .D ( a_in[0] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[0] ) ) ;
DFFRBQX1TAS7 R_227 ( .D ( b_in[12] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[12] ) ) ;
DFFSBQX1TAS7 R_72_RW_0 ( .D ( n1124 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1103 ) ) ;
DFFRBQX1TAS7 R_257 ( .D ( b_in[6] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[6] ) ) ;
DFFSBQX1TAS7 R_264 ( .D ( n1094 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1113 ) ) ;
DFFRBQX1TAS7 R_263 ( .D ( b_in[1] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[1] ) ) ;
DFFSBQX1TAS7 R_278 ( .D ( n221 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1093 ) ) ;
DFFSBQX1TAS7 R_318 ( .D ( n1115 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1091 ) ) ;
DFFSBQX1TAS7 R_355 ( .D ( intadd_0_SUM_1_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1090 ) ) ;
DFFSBQX1TAS7 R_358 ( .D ( n1114 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1089 ) ) ;
DFFSBQX1TAS7 R_385 ( .D ( n228 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1088 ) ) ;
DFFSBQX1TAS7 R_388 ( .D ( n1125 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1086 ) ) ;
DFFSBQX1TAS7 R_386 ( .D ( n1127 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1087 ) ) ;
DFFSBQX1TAS7 R_390 ( .D ( n1130 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1085 ) ) ;
DFFSBQX1TAS7 R_391 ( .D ( n1123 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1084 ) ) ;
DFFSBQX1TAS7 R_392 ( .D ( n1122 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1083 ) ) ;
DFFSBQX1TAS7 R_407 ( .D ( n1111 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1082 ) ) ;
DFFSBQX1TAS7 R_410 ( .D ( n1081 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1110 ) ) ;
DFFSBQX1TAS7 R_415 ( .D ( my_alu_mul_res_5_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1080 ) ) ;
DFFRBQX1TAS7 flags_out_reg_1_ ( .D ( alu_flags_1_ ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( flags_out[1] ) ) ;
DFFRBQX1TAS7 result_out_reg_3_ ( .D ( n222 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( result_out[3] ) ) ;
DFFSBQX1TAS7 R_315 ( .D ( intadd_0_SUM_2_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1092 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_381 ( .D ( mult_x_2_n168 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1069 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_413 ( .D ( mult_x_2_n104 ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( n1075 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_254 ( .D ( b_in[0] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n43 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_411 ( .D ( mult_x_2_n103 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1074 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_406 ( .D ( n1073 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n412 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_394 ( .D ( mult_x_2_n165 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1071 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_395 ( .D ( mult_x_2_n167 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1072 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_361_RW_0 ( .D ( mult_x_2_n173 ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( n1061 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_371 ( .D ( mult_x_2_n163 ) , .CK ( clk ) , 
    .SB ( rst_n ) , .Q ( n1065 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_370 ( .D ( mult_x_2_n54 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1064 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_368 ( .D ( mult_x_2_n213 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1063 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_367 ( .D ( mult_x_2_n208 ) , .CK ( clk ) , 
    .RB ( rst_n ) , .Q ( n1062 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_353 ( .D ( mult_x_2_n164 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1060 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_351 ( .D ( mult_x_2_n209 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1059 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_350 ( .D ( mult_x_2_n204 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1058 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_298_RW_0 ( .D ( mult_x_2_n196 ) , .CK ( clk ) , 
    .RB ( n1078 ) , .Q ( n1054 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_299 ( .D ( n1018 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n1055 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_294 ( .D ( mult_x_2_n161 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1051 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_286 ( .D ( n1046 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n268 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_270 ( .D ( n1045 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( mult_x_2_n17 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_267 ( .D ( n1044 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( mult_x_2_n383 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_260 ( .D ( b_in[6] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_n399 ) ) ;
DFFRBQX4TAS7 mult_x_2_R_266 ( .D ( a_in[1] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( n1013 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_258 ( .D ( n1028 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n1011 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_259 ( .D ( n1043 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( mult_x_2_n382 ) ) ;
DFFRBQX4TAS7 mult_x_2_R_284 ( .D ( b_in[0] ) , .CK ( clk ) , .RB ( n1077 ) , 
    .Q ( n1020 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_228 ( .D ( a_in[1] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( n1012 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_229 ( .D ( n1039 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( mult_x_2_n376 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_230 ( .D ( b_in[12] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_b_12_ ) ) ;
DFFRBQX1TAS7 mult_x_2_R_222 ( .D ( a_in[0] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_a_0_ ) ) ;
DFFRBQX1TAS7 mult_x_2_R_221 ( .D ( n1038 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n413 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_202 ( .D ( n1037 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n41 ) ) ;
DFFRBQX4TAS7 mult_x_2_R_203 ( .D ( a_in[13] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n36 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_166 ( .D ( n1036 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n408 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_162 ( .D ( n1035 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_n406 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_128 ( .D ( b_in[2] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_n403 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_127 ( .D ( n1034 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( mult_x_2_n354 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_112 ( .D ( a_in[4] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_a_4_ ) ) ;
DFFSBQX1TAS7 mult_x_2_R_269 ( .D ( n1033 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n16 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_106 ( .D ( b_in[1] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_n404 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_105 ( .D ( n1032 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( n1023 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_285 ( .D ( n1031 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( n1024 ) ) ;
DFFSBQX1TAS7 mult_x_2_R_93 ( .D ( n1030 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( mult_x_2_n37 ) ) ;
DFFRBQX1TAS7 mult_x_2_R_94 ( .D ( a_in[12] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_a_12_ ) ) ;
DFFRBQX1TAS7 mult_x_2_R_30 ( .D ( a_in[8] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( mult_x_2_a_8_ ) ) ;
DFFRBQX4TAS7 mult_x_2_R_165 ( .D ( a_in[11] ) , .CK ( clk ) , .RB ( n1077 ) , 
    .Q ( n1014 ) ) ;
DFFSBQX4TAS7 mult_x_2_R_21 ( .D ( n1027 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n9 ) ) ;
DFFSBQX4TAS7 mult_x_2_R_17 ( .D ( n1026 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n32 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_373 ( .D ( mult_x_2_n158 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1067 ) ) ;
DFFRBQX4TAS7 mult_x_2_R_289 ( .D ( n1019 ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( n1047 ) ) ;
DFFSBQX4TAS7 mult_x_2_R_303 ( .D ( mult_x_2_n141 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1056 ) ) ;
DFFRBQX2TAS7 b_reg_reg_11_ ( .D ( b_in[11] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[11] ) ) ;
DFFSBQX2TAS7 mult_x_2_R_349 ( .D ( mult_x_2_n202 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1057 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_372 ( .D ( mult_x_2_n154 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1066 ) ) ;
DFFRBQX4TAS7 result_out_reg_0_ ( .D ( n225 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( result_out[0] ) ) ;
DFFSBQX4TAS7 R_154 ( .D ( intadd_0_SUM_3_ ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n1096 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_164 ( .D ( a_in[15] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n40 ) ) ;
DFFSBQX4TAS7 mult_x_2_R_380 ( .D ( n1017 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n1068 ) ) ;
DFFRBQX1TAS7 R_19 ( .D ( a_in[2] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[2] ) ) ;
DFFSBQX2TAS7 mult_x_2_R_293 ( .D ( mult_x_2_n176 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1050 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_236_RW_0 ( .D ( mult_x_2_n186 ) , .CK ( clk ) , 
    .SB ( rst_n ) , .Q ( n1042 ) ) ;
DFFRBQX4TAS7 b_reg_reg_3_ ( .D ( b_in[3] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[3] ) ) ;
DFFSBQX2TAS7 mult_x_2_R_296 ( .D ( mult_x_2_n194 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1052 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_235_RW_0 ( .D ( mult_x_2_n193 ) , .CK ( clk ) , 
    .SB ( rst_n ) , .Q ( n1041 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_234 ( .D ( mult_x_2_n184 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1040 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_291 ( .D ( mult_x_2_n174 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1048 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_292 ( .D ( mult_x_2_n183 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1049 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_16 ( .D ( a_in[9] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n1015 ) ) ;
DFFSBQX4TAS7 mult_x_2_R_29 ( .D ( n1029 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( mult_x_2_n27 ) ) ;
DFFRBQX2TAS7 result_out_reg_4_ ( .D ( n221 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( result_out[4] ) ) ;
DFFSBQX2TAS7 mult_x_2_R_393 ( .D ( mult_x_2_n156 ) , .CK ( clk ) , 
    .SB ( n1077 ) , .Q ( n1070 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_268 ( .D ( b_in[5] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_n400 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_297 ( .D ( mult_x_2_n201 ) , .CK ( clk ) , 
    .SB ( n1076 ) , .Q ( n1053 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_405 ( .D ( a_in[3] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n1016 ) ) ;
DFFRBQX2TAS7 R_99 ( .D ( a_in[6] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( a_reg[6] ) ) ;
DFFSBQX4TAS7 R_419 ( .D ( n316 ) , .CK ( clk ) , .SB ( n1077 ) , .Q ( n613 ) ) ;
DFFSBQX1TAS7 R_421 ( .D ( n1021 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( n720 ) ) ;
DFFRBQX2TAS7 R_423 ( .D ( b_in[4] ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( b_reg[4] ) ) ;
DFFSBQX1TAS7 R_425 ( .D ( n1119 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n314 ) ) ;
DFFSBQX1TAS7 R_426 ( .D ( n1126 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n313 ) ) ;
DFFRBQX1TAS7 R_427 ( .D ( n1128 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n312 ) ) ;
DFFRBQX1TAS7 R_428 ( .D ( n1129 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n311 ) ) ;
DFFRBQX1TAS7 R_429 ( .D ( n223 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( result_out[2] ) ) ;
DFFRBQX1TAS7 R_430 ( .D ( mult_x_2_n161 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n309 ) ) ;
DFFSBQX1TAS7 R_431 ( .D ( mult_x_2_n105 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( n308 ) ) ;
DFFSBQX1TAS7 R_433 ( .D ( mult_x_2_n213 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n306 ) ) ;
DFFSBQX1TAS7 R_434 ( .D ( n1121 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n305 ) ) ;
DFFSBQX1TAS7 R_435 ( .D ( mult_x_2_n219 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n304 ) ) ;
DFFSBQX1TAS7 R_437 ( .D ( mult_x_2_n208 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n302 ) ) ;
DFFSBQX2TAS7 R_432 ( .D ( mult_x_2_n207 ) , .CK ( clk ) , .SB ( n1076 ) , 
    .Q ( n307 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_126 ( .D ( a_in[5] ) , .CK ( clk ) , .RB ( n1077 ) , 
    .Q ( n1025 ) ) ;
DFFRBQX2TAS7 R_36 ( .D ( n1131 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n1106 ) ) ;
DFFSBQX2TAS7 R_436 ( .D ( mult_x_2_n214 ) , .CK ( clk ) , .SB ( rst_n ) , 
    .Q ( n303 ) ) ;
DFFSBQX1TAS7 R_424 ( .D ( n315 ) , .CK ( clk ) , .SB ( rst_n ) , .Q ( n587 ) ) ;
DFFSBQX2TAS7 mult_x_2_R_9 ( .D ( n1022 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n424 ) ) ;
DFFRBQX2TAS7 mult_x_2_R_101 ( .D ( a_in[6] ) , .CK ( clk ) , .RB ( n1078 ) , 
    .Q ( mult_x_2_a_6_ ) ) ;
DFFSBQX2TAS7 R_420 ( .D ( n1021 ) , .CK ( clk ) , .SB ( n1077 ) , 
    .Q ( mult_x_2_n425 ) ) ;
DFFRBQX1TAS7 R_418 ( .D ( n1124 ) , .CK ( clk ) , .RB ( rst_n ) , 
    .Q ( n1079 ) ) ;
BUFX1TAS7 U224 ( .I ( n998 ) , .O ( n375 ) ) ;
CLKINVX1TAS7 U225 ( .I ( n652 ) , .O ( mult_x_2_n164 ) ) ;
CLKINVX1TAS7 U226 ( .I ( n620 ) , .O ( n437 ) ) ;
HAX1TAS7 U227 ( .I1 ( n744 ) , .I2 ( n743 ) , .CO ( n778 ) , .S ( n749 ) ) ;
INVX1TAS7 U228 ( .I ( n239 ) , .O ( n582 ) ) ;
INVX1TAS7 U229 ( .I ( n1119 ) , .O ( n1124 ) ) ;
INVX2TAS7 U230 ( .I ( n228 ) , .O ( n962 ) ) ;
OAI12X1TAS7 U231 ( .B1 ( n870 ) , .B2 ( n869 ) , .A1 ( n868 ) , .O ( n871 ) ) ;
INVX1TAS7 U232 ( .I ( n787 ) , .O ( n789 ) ) ;
INVX1TAS7 U233 ( .I ( n645 ) , .O ( n383 ) ) ;
CLKINVX1TAS7 U234 ( .I ( n521 ) , .O ( n531 ) ) ;
INVX1TAS7 U235 ( .I ( n644 ) , .O ( n380 ) ) ;
NOR2B1X1TAS7 U236 ( .B2 ( n355 ) , .I1 ( mult_x_2_n27 ) , .O ( n621 ) ) ;
AOI12X1TAS7 U237 ( .B1 ( n884 ) , .B2 ( n883 ) , .A1 ( n882 ) , .O ( n992 ) ) ;
CLKBUFX3TAS7 U238 ( .I ( n835 ) , .O ( n1108 ) ) ;
NOR2B1X1TAS7 U239 ( .B2 ( n355 ) , .I1 ( n814 ) , .O ( n786 ) ) ;
AOI12X2TAS7 U240 ( .B1 ( n538 ) , .B2 ( n257 ) , .A1 ( n337 ) , .O ( n496 ) ) ;
CLKINVX1TAS7 U241 ( .I ( n289 ) , .O ( n482 ) ) ;
INVX2TAS7 U242 ( .I ( n551 ) , .O ( n538 ) ) ;
XNOR2X1TAS7 U243 ( .I1 ( mult_x_2_n403 ) , .I2 ( mult_x_2_n36 ) , 
    .O ( n716 ) ) ;
XOR2X1TAS7 U244 ( .I1 ( n518 ) , .I2 ( n1047 ) , .O ( n485 ) ) ;
INVX1TAS7 U245 ( .I ( n814 ) , .O ( n268 ) ) ;
CLKINVX1TAS7 U246 ( .I ( n489 ) , .O ( n332 ) ) ;
INVX2TAS7 U247 ( .I ( n577 ) , .O ( n814 ) ) ;
NAND2X1TAS7 U248 ( .I1 ( mult_x_2_n408 ) , .I2 ( mult_x_2_n32 ) , 
    .O ( n736 ) ) ;
CLKINVX1TAS7 U249 ( .I ( n402 ) , .O ( n401 ) ) ;
CLKINVX1TAS7 U250 ( .I ( a_reg[6] ) , .O ( n841 ) ) ;
CLKINVX1TAS7 U251 ( .I ( n494 ) , .O ( n373 ) ) ;
CLKINVX1TAS7 U252 ( .I ( n492 ) , .O ( n394 ) ) ;
CLKINVX1TAS7 U253 ( .I ( n457 ) , .O ( n400 ) ) ;
NAND2X1TAS7 U254 ( .I1 ( n1048 ) , .I2 ( n1049 ) , .O ( n406 ) ) ;
NAND2X1TAS7 U255 ( .I1 ( n408 ) , .I2 ( n1050 ) , .O ( n407 ) ) ;
NAND2X2TAS7 U256 ( .I1 ( mult_x_2_n9 ) , .I2 ( mult_x_2_n412 ) , .O ( n767 ) ) ;
BUFX3TAS7 U257 ( .I ( n1020 ) , .O ( n355 ) ) ;
NAND2X1TAS7 U258 ( .I1 ( n488 ) , .I2 ( n487 ) , .O ( n492 ) ) ;
NAND2X1TAS7 U259 ( .I1 ( n392 ) , .I2 ( n391 ) , .O ( n494 ) ) ;
NAND2X1TAS7 U260 ( .I1 ( n456 ) , .I2 ( n455 ) , .O ( n457 ) ) ;
CLKINVX1TAS7 U261 ( .I ( n1048 ) , .O ( n338 ) ) ;
CLKINVX1TAS7 U262 ( .I ( n1054 ) , .O ( n403 ) ) ;
NAND2X1TAS7 U263 ( .I1 ( n486 ) , .I2 ( n1054 ) , .O ( n488 ) ) ;
NAND2X1TAS7 U264 ( .I1 ( n1052 ) , .I2 ( n1053 ) , .O ( n487 ) ) ;
NAND2X1TAS7 U265 ( .I1 ( n304 ) , .I2 ( n303 ) , .O ( n472 ) ) ;
XNOR2X2TAS7 U266 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[6] ) , .O ( n842 ) ) ;
NAND2X2TAS7 U267 ( .I1 ( n386 ) , .I2 ( n384 ) , .O ( n719 ) ) ;
XNOR2X2TAS7 U268 ( .I1 ( n381 ) , .I2 ( n682 ) , .O ( n684 ) ) ;
XNOR2X2TAS7 U269 ( .I1 ( b_reg[4] ) , .I2 ( n405 ) , .O ( n634 ) ) ;
NAND3X2TAS7 U270 ( .I1 ( n261 ) , .I2 ( n260 ) , .I3 ( n642 ) , .O ( n682 ) ) ;
OR2X2TAS7 U271 ( .I1 ( n837 ) , .I2 ( n836 ) , .O ( n847 ) ) ;
OR2X2TAS7 U272 ( .I1 ( alu_ctrl_reg[1] ) , .I2 ( alu_ctrl_reg[0] ) , 
    .O ( n564 ) ) ;
XNOR2X2TAS7 U273 ( .I1 ( b_reg[9] ) , .I2 ( alu_ctrl_reg[0] ) , .O ( n861 ) ) ;
XOR2X1TAS7 U274 ( .I1 ( n1068 ) , .I2 ( n1069 ) , .O ( n518 ) ) ;
NAND2X4TAS7 U275 ( .I1 ( n33 ) , .I2 ( n1110 ) , .O ( n942 ) ) ;
NAND2X4TAS7 U276 ( .I1 ( a_reg[0] ) , .I2 ( n1109 ) , .O ( n33 ) ) ;
NAND2X1TAS7 U277 ( .I1 ( n454 ) , .I2 ( n1059 ) , .O ( n456 ) ) ;
BUFX12TAS7 U278 ( .I ( n1015 ) , .O ( n405 ) ) ;
CLKINVX2TAS7 U279 ( .I ( n291 ) , .O ( n528 ) ) ;
CLKINVX1TAS7 U280 ( .I ( n1024 ) , .O ( n370 ) ) ;
NAND2X1TAS7 U281 ( .I1 ( n1058 ) , .I2 ( n1057 ) , .O ( n455 ) ) ;
NAND2X1TAS7 U282 ( .I1 ( n393 ) , .I2 ( n1042 ) , .O ( n392 ) ) ;
CLKINVX1TAS7 U283 ( .I ( mult_x_2_n17 ) , .O ( n265 ) ) ;
CLKINVX1TAS7 U284 ( .I ( n614 ) , .O ( n617 ) ) ;
CLKINVX1TAS7 U285 ( .I ( n1058 ) , .O ( n448 ) ) ;
NAND2X1TAS7 U286 ( .I1 ( n407 ) , .I2 ( n406 ) , .O ( n484 ) ) ;
NAND2X1TAS7 U287 ( .I1 ( n402 ) , .I2 ( n457 ) , .O ( n489 ) ) ;
XNOR2X1TAS7 U288 ( .I1 ( b_reg[3] ) , .I2 ( n328 ) , .O ( n766 ) ) ;
XNOR2X1TAS7 U289 ( .I1 ( mult_x_2_n399 ) , .I2 ( n717 ) , .O ( n664 ) ) ;
OAI12X1TAS7 U290 ( .B1 ( n953 ) , .B2 ( n954 ) , .A1 ( n596 ) , .O ( n597 ) ) ;
CLKINVX1TAS7 U291 ( .I ( n480 ) , .O ( n426 ) ) ;
OAI12X1TAS7 U292 ( .B1 ( a_reg[1] ) , .B2 ( n942 ) , .A1 ( n588 ) , 
    .O ( n901 ) ) ;
OAI12X1TAS7 U293 ( .B1 ( n380 ) , .B2 ( n383 ) , .A1 ( n378 ) , .O ( n651 ) ) ;
CLKINVX1TAS7 U294 ( .I ( n482 ) , .O ( n427 ) ) ;
CLKINVX1TAS7 U295 ( .I ( n1104 ) , .O ( n433 ) ) ;
NAND2X1TAS7 U296 ( .I1 ( n254 ) , .I2 ( n253 ) , .O ( n826 ) ) ;
NAND2X1TAS7 U297 ( .I1 ( n439 ) , .I2 ( n438 ) , .O ( n446 ) ) ;
BUFX1TAS7 U298 ( .I ( n835 ) , .O ( n1001 ) ) ;
FAX1TAS7 U299 ( .CI ( n798 ) , .I1 ( n797 ) , .I2 ( n796 ) , .CO ( n737 ) , 
    .S ( mult_x_2_n156 ) ) ;
XOR2X2TAS7 U300 ( .I1 ( n1014 ) , .I2 ( n355 ) , .O ( n226 ) ) ;
CLKINVX1TAS7 U301 ( .I ( mult_x_2_n43 ) , .O ( n768 ) ) ;
XNOR2X1TAS7 U302 ( .I1 ( b_reg[9] ) , .I2 ( n769 ) , .O ( n227 ) ) ;
OR2X1TAS7 U303 ( .I1 ( n564 ) , .I2 ( alu_ctrl_reg[2] ) , .O ( n228 ) ) ;
NAND2X1TAS7 U304 ( .I1 ( n596 ) , .I2 ( n595 ) , .O ( n954 ) ) ;
NAND2X1TAS7 U305 ( .I1 ( n229 ) , .I2 ( n1006 ) , .O ( n1003 ) ) ;
XNOR2X1TAS7 U306 ( .I1 ( n230 ) , .I2 ( n999 ) , .O ( n229 ) ) ;
CLKINVX1TAS7 U307 ( .I ( n1000 ) , .O ( n230 ) ) ;
NAND2X1TAS7 U308 ( .I1 ( n231 ) , .I2 ( n1006 ) , .O ( n987 ) ) ;
XNOR2X1TAS7 U309 ( .I1 ( n232 ) , .I2 ( n984 ) , .O ( n231 ) ) ;
CLKINVX1TAS7 U310 ( .I ( n985 ) , .O ( n232 ) ) ;
OAI112X2TAS7 U311 ( .C1 ( n957 ) , .C2 ( n236 ) , .A1 ( n235 ) , 
    .B1 ( n233 ) , .O ( n960 ) ) ;
NAND2B1X1TAS7 U312 ( .B2 ( n234 ) , .I1 ( n957 ) , .O ( n233 ) ) ;
NAND2B1X1TAS7 U313 ( .B2 ( n958 ) , .I1 ( n956 ) , .O ( n234 ) ) ;
AOI12B2X1TAS7 U314 ( .B1B ( n236 ) , .B2B ( n956 ) , .A1 ( n1119 ) , 
    .O ( n235 ) ) ;
INVX1TAS7 U315 ( .I ( n958 ) , .O ( n236 ) ) ;
NAND2X1TAS7 U316 ( .I1 ( n237 ) , .I2 ( n501 ) , .O ( n503 ) ) ;
OAI12X1TAS7 U317 ( .B1 ( n1070 ) , .B2 ( n1071 ) , .A1 ( n1072 ) , 
    .O ( n237 ) ) ;
XNOR2X1TAS7 U318 ( .I1 ( n238 ) , .I2 ( n972 ) , .O ( n974 ) ) ;
CLKINVX1TAS7 U319 ( .I ( n973 ) , .O ( n238 ) ) ;
NAND2X1TAS7 U320 ( .I1 ( n580 ) , .I2 ( n581 ) , .O ( n239 ) ) ;
NOR2X1TAS7 U321 ( .I1 ( n574 ) , .I2 ( n573 ) , .O ( n955 ) ) ;
XOR2X1TAS7 U322 ( .I1 ( n581 ) , .I2 ( n580 ) , .O ( n574 ) ) ;
NAND2X2TAS7 U323 ( .I1 ( n385 ) , .I2 ( n613 ) , .O ( n384 ) ) ;
NAND2X1TAS7 U324 ( .I1 ( n513 ) , .I2 ( n512 ) , .O ( n526 ) ) ;
NOR2X2TAS7 U325 ( .I1 ( n990 ) , .I2 ( n894 ) , .O ( n980 ) ) ;
NAND2X1TAS7 U326 ( .I1 ( n451 ) , .I2 ( n464 ) , .O ( n399 ) ) ;
OAI12X1TAS7 U327 ( .B1 ( a_reg[2] ) , .B2 ( n591 ) , .A1 ( n590 ) , 
    .O ( n953 ) ) ;
OAI12B2X2TAS7 U328 ( .B1B ( n241 ) , .B2B ( n240 ) , .A1 ( n630 ) , 
    .O ( n644 ) ) ;
CLKINVX1TAS7 U329 ( .I ( n665 ) , .O ( n240 ) ) ;
CLKINVX1TAS7 U330 ( .I ( mult_x_2_n32 ) , .O ( n241 ) ) ;
CLKINVX1TAS7 U331 ( .I ( n381 ) , .O ( n681 ) ) ;
XNOR2X1TAS7 U332 ( .I1 ( n383 ) , .I2 ( n382 ) , .O ( n381 ) ) ;
XNOR2X2TAS7 U333 ( .I1 ( n245_CDR1 ) , .I2 ( n242_CDR1 ) , .O ( n330 ) ) ;
XNOR2X1TAS7 U334 ( .I1 ( n244_CDR1 ) , .I2 ( n243_CDR1 ) , .O ( n242_CDR1 ) ) ;
XOR2X1TAS7 U335 ( .I1 ( n363_CDR1 ) , .I2 ( n725_CDR1 ) , .O ( n243_CDR1 ) ) ;
XNOR2X1TAS7 U336 ( .I1 ( n724 ) , .I2 ( n276_CDR1 ) , .O ( n244_CDR1 ) ) ;
XNOR2X1TAS7 U337 ( .I1 ( n247_CDR1 ) , .I2 ( n246 ) , .O ( n245_CDR1 ) ) ;
NAND2X1TAS7 U338 ( .I1 ( n357 ) , .I2 ( n356 ) , .O ( n246 ) ) ;
XNOR2X1TAS7 U339 ( .I1 ( n284 ) , .I2 ( n726 ) , .O ( n247_CDR1 ) ) ;
NAND2X1TAS7 U340 ( .I1 ( n250 ) , .I2 ( n248 ) , .O ( mult_x_2_n165 ) ) ;
NAND2B1X1TAS7 U341 ( .B2 ( n249 ) , .I1 ( n801 ) , .O ( n248 ) ) ;
INVX1TAS7 U342 ( .I ( n800 ) , .O ( n249 ) ) ;
NAND2X1TAS7 U343 ( .I1 ( n251 ) , .I2 ( n799 ) , .O ( n250 ) ) ;
OR2X1TAS7 U344 ( .I1 ( n801 ) , .I2 ( n800 ) , .O ( n251 ) ) ;
XNOR2X1TAS7 U345 ( .I1 ( n252 ) , .I2 ( n804 ) , .O ( mult_x_2_n176 ) ) ;
XNOR2X1TAS7 U346 ( .I1 ( n802 ) , .I2 ( n803 ) , .O ( n252 ) ) ;
XOR2X1TAS7 U347 ( .I1 ( n827 ) , .I2 ( n826 ) , .O ( n1017 ) ) ;
NAND2X1TAS7 U348 ( .I1 ( n804 ) , .I2 ( n803 ) , .O ( n253 ) ) ;
OAI12X1TAS7 U349 ( .B1 ( n804 ) , .B2 ( n803 ) , .A1 ( n802 ) , .O ( n254 ) ) ;
XOR2X1TAS7 U350 ( .I1 ( n801 ) , .I2 ( n255 ) , .O ( n827 ) ) ;
XOR2X1TAS7 U351 ( .I1 ( n799 ) , .I2 ( n800 ) , .O ( n255 ) ) ;
INVX1TAS7 U352 ( .I ( n685 ) , .O ( n256 ) ) ;
NAND2B1X1TAS7 U353 ( .B2 ( n688 ) , .I1 ( n256 ) , .O ( n658 ) ) ;
XNOR2X1TAS7 U354 ( .I1 ( n298 ) , .I2 ( n328 ) , .O ( n689 ) ) ;
XNOR2X1TAS7 U355 ( .I1 ( b_reg[7] ) , .I2 ( n717 ) , .O ( n706 ) ) ;
NAND2X1TAS7 U356 ( .I1 ( n257 ) , .I2 ( n536 ) , .O ( n541 ) ) ;
NAND2X2TAS7 U357 ( .I1 ( n552 ) , .I2 ( n257 ) , .O ( n497 ) ) ;
NAND2X4TAS7 U358 ( .I1 ( n374 ) , .I2 ( n373 ) , .O ( n257 ) ) ;
NAND3X1TAS7 U359 ( .I1 ( n262 ) , .I2 ( n259 ) , .I3 ( n258 ) , 
    .O ( mult_x_2_n173 ) ) ;
NAND2X1TAS7 U360 ( .I1 ( n683 ) , .I2 ( n682 ) , .O ( n258 ) ) ;
NAND2X1TAS7 U361 ( .I1 ( n681 ) , .I2 ( n682 ) , .O ( n259 ) ) ;
NAND2X1TAS7 U362 ( .I1 ( n834 ) , .I2 ( n831 ) , .O ( n260 ) ) ;
NAND2X1TAS7 U363 ( .I1 ( n834 ) , .I2 ( n832 ) , .O ( n261 ) ) ;
NAND2X1TAS7 U364 ( .I1 ( n681 ) , .I2 ( n683 ) , .O ( n262 ) ) ;
XOR2X1TAS7 U365 ( .I1 ( n646 ) , .I2 ( n263 ) , .O ( n683 ) ) ;
XOR2X1TAS7 U366 ( .I1 ( n648 ) , .I2 ( n647 ) , .O ( n263 ) ) ;
NAND2X2TAS7 U367 ( .I1 ( n267 ) , .I2 ( n264 ) , .O ( n647 ) ) ;
NAND2X1TAS7 U368 ( .I1 ( n266 ) , .I2 ( n265 ) , .O ( n264 ) ) ;
CLKINVX1TAS7 U369 ( .I ( n639 ) , .O ( n266 ) ) ;
NAND2X1TAS7 U370 ( .I1 ( n269 ) , .I2 ( n268 ) , .O ( n267 ) ) ;
CLKINVX1TAS7 U371 ( .I ( n815 ) , .O ( n269 ) ) ;
NAND2X1TAS7 U372 ( .I1 ( n273 ) , .I2 ( n270 ) , .O ( n648 ) ) ;
NAND2X1TAS7 U373 ( .I1 ( n272 ) , .I2 ( n271 ) , .O ( n270 ) ) ;
CLKINVX1TAS7 U374 ( .I ( mult_x_2_n9 ) , .O ( n271 ) ) ;
CLKINVX1TAS7 U375 ( .I ( n435 ) , .O ( n272 ) ) ;
NAND2X1TAS7 U376 ( .I1 ( n275 ) , .I2 ( n274 ) , .O ( n273 ) ) ;
CLKINVX1TAS7 U377 ( .I ( n767 ) , .O ( n274 ) ) ;
CLKINVX1TAS7 U378 ( .I ( n654 ) , .O ( n275 ) ) ;
XOR2X1TAS7 U379 ( .I1 ( n279 ) , .I2 ( n713 ) , .O ( n276_CDR1 ) ) ;
OAI22B2X1TAS7 U380 ( .A1 ( n728 ) , .A2 ( mult_x_2_n17 ) , .B1B ( n577 ) , 
    .B2B ( n278 ) , .O ( n277 ) ) ;
XNOR2X1TAS7 U381 ( .I1 ( mult_x_2_n424 ) , .I2 ( b_reg[11] ) , .O ( n278 ) ) ;
XNOR2X2TAS7 U382 ( .I1 ( mult_x_2_a_4_ ) , .I2 ( mult_x_2_n425 ) , 
    .O ( n577 ) ) ;
XNOR2X1TAS7 U383 ( .I1 ( b_reg[10] ) , .I2 ( n1025 ) , .O ( n728 ) ) ;
OAI12B2X1TAS7 U384 ( .B1B ( n283 ) , .B2B ( n282 ) , .A1 ( n280 ) , 
    .O ( n279 ) ) ;
NAND2B1X1TAS7 U385 ( .B2 ( n727 ) , .I1 ( n281 ) , .O ( n280 ) ) ;
XOR2X1TAS7 U386 ( .I1 ( mult_x_2_n40 ) , .I2 ( n1020 ) , .O ( n281 ) ) ;
CLKINVX1TAS7 U387 ( .I ( mult_x_2_n41 ) , .O ( n282 ) ) ;
XOR2X1TAS7 U388 ( .I1 ( mult_x_2_n404 ) , .I2 ( mult_x_2_n40 ) , .O ( n283 ) ) ;
OAI22X1TAS7 U389 ( .A1 ( n731 ) , .A2 ( n813 ) , .B1 ( n937 ) , .B2 ( n285 ) , 
    .O ( n284 ) ) ;
XNOR2X1TAS7 U390 ( .I1 ( b_reg[15] ) , .I2 ( n1012 ) , .O ( n285 ) ) ;
OAI22B2X1TAS7 U391 ( .A1 ( n734 ) , .A2 ( n736 ) , .B1B ( n286 ) , 
    .B2B ( n241 ) , .O ( n714 ) ) ;
XOR2X1TAS7 U392 ( .I1 ( mult_x_2_n400 ) , .I2 ( n1014 ) , .O ( n286 ) ) ;
XNOR2X1TAS7 U393 ( .I1 ( b_reg[4] ) , .I2 ( n1014 ) , .O ( n734 ) ) ;
INVX1TAS7 U394 ( .I ( n287 ) , .O ( n779 ) ) ;
NAND2X2TAS7 U395 ( .I1 ( n287 ) , .I2 ( n781 ) , .O ( n584 ) ) ;
NAND2X1TAS7 U396 ( .I1 ( n583 ) , .I2 ( n582 ) , .O ( n287 ) ) ;
CLKINVX1TAS7 U397 ( .I ( n288 ) , .O ( n790 ) ) ;
OAI12X1TAS7 U398 ( .B1 ( n787 ) , .B2 ( n288 ) , .A1 ( n786 ) , .O ( n788 ) ) ;
XOR2X1TAS7 U399 ( .I1 ( n786 ) , .I2 ( n288 ) , .O ( n579 ) ) ;
NAND2X2TAS7 U400 ( .I1 ( n341 ) , .I2 ( n296 ) , .O ( n288 ) ) ;
OAI22B2X2TAS7 U401 ( .A1 ( n766 ) , .A2 ( mult_x_2_n9 ) , .B1B ( n295 ) , 
    .B2B ( n274 ) , .O ( n782 ) ) ;
XOR2X1TAS7 U402 ( .I1 ( mult_x_2_n403 ) , .I2 ( n321 ) , .O ( n295 ) ) ;
INVX1TAS7 U403 ( .I ( n450 ) , .O ( n290 ) ) ;
OR2X1TAS7 U404 ( .I1 ( n289 ) , .I2 ( n307 ) , .O ( n372 ) ) ;
OAI12B2X2TAS7 U405 ( .B1B ( n307 ) , .B2B ( n289 ) , .A1 ( n366 ) , 
    .O ( n490 ) ) ;
NAND2X2TAS7 U406 ( .I1 ( n290 ) , .I2 ( n399 ) , .O ( n289 ) ) ;
NAND2X1TAS7 U407 ( .I1 ( n293 ) , .I2 ( n292 ) , .O ( n396 ) ) ;
NAND3B1X1TAS7 U408 ( .B3 ( n376 ) , .I1 ( n293 ) , .I2 ( n292 ) , 
    .O ( n291 ) ) ;
NAND2X1TAS7 U409 ( .I1 ( n516 ) , .I2 ( n412 ) , .O ( n292 ) ) ;
NAND2B1X1TAS7 U410 ( .B2 ( n516 ) , .I1 ( n323 ) , .O ( n293 ) ) ;
XNOR2X1TAS7 U411 ( .I1 ( n515 ) , .I2 ( n514 ) , .O ( n516 ) ) ;
NOR2X2TAS7 U412 ( .I1 ( n485 ) , .I2 ( n484 ) , .O ( n521 ) ) ;
OR2X1TAS7 U413 ( .I1 ( n583 ) , .I2 ( n582 ) , .O ( n294 ) ) ;
NAND2X1TAS7 U414 ( .I1 ( n271 ) , .I2 ( n295 ) , .O ( n296 ) ) ;
NAND2X1TAS7 U415 ( .I1 ( n342 ) , .I2 ( n274 ) , .O ( n341 ) ) ;
BUFX1TAS7 U416 ( .I ( n732 ) , .O ( n297 ) ) ;
XNOR2X2TAS7 U417 ( .I1 ( n643 ) , .I2 ( n644 ) , .O ( n382 ) ) ;
HAX1TAS7 U418 ( .I1 ( n677 ) , .I2 ( n676 ) , .CO ( n678 ) , .S ( n445 ) ) ;
XOR2X1TAS7 U419 ( .I1 ( n730 ) , .I2 ( n361 ) , .O ( mult_x_2_n158 ) ) ;
NAND2X1TAS7 U420 ( .I1 ( n362 ) , .I2 ( n730 ) , .O ( n356 ) ) ;
NOR2X2TAS7 U421 ( .I1 ( n303 ) , .I2 ( n304 ) , .O ( n471 ) ) ;
BUFX1TAS7 U422 ( .I ( b_reg[8] ) , .O ( n298 ) ) ;
BUFX1TAS7 U423 ( .I ( n532 ) , .O ( n299 ) ) ;
CLKINVX1TAS7 U424 ( .I ( b_reg[13] ) , .O ( n300 ) ) ;
CLKINVX2TAS7 U425 ( .I ( n300 ) , .O ( n301 ) ) ;
NAND2X1TAS7 U426 ( .I1 ( n1040 ) , .I2 ( n1041 ) , .O ( n391 ) ) ;
NAND2X1TAS7 U427 ( .I1 ( n606 ) , .I2 ( n605 ) , .O ( n221 ) ) ;
XNOR2X1TAS7 U428 ( .I1 ( b_reg[3] ) , .I2 ( mult_x_2_n36 ) , .O ( n715 ) ) ;
XNOR2X1TAS7 U429 ( .I1 ( b_reg[3] ) , .I2 ( n405 ) , .O ( n638 ) ) ;
XNOR2X1TAS7 U430 ( .I1 ( b_reg[3] ) , .I2 ( n769 ) , .O ( n612 ) ) ;
XOR2X1TAS7 U431 ( .I1 ( n308 ) , .I2 ( n1064 ) , .O ( n469 ) ) ;
OAI12X1TAS7 U432 ( .B1 ( n1074 ) , .B2 ( n308 ) , .A1 ( n1075 ) , 
    .O ( n464 ) ) ;
AOI12X1TAS7 U433 ( .B1 ( n426 ) , .B2 ( n482 ) , .A1 ( n314 ) , .O ( n425 ) ) ;
XNOR2X1TAS7 U434 ( .I1 ( alu_ctrl_in[0] ) , .I2 ( b_in[4] ) , .O ( n315 ) ) ;
XNOR2X1TAS7 U435 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[5] ) , .O ( n837 ) ) ;
XNOR2X1TAS7 U436 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[2] ) , .O ( n902 ) ) ;
XNOR2X1TAS7 U437 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[8] ) , .O ( n875 ) ) ;
XNOR2X1TAS7 U438 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( n335 ) , .O ( n879 ) ) ;
XNOR2X1TAS7 U439 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( n301 ) , .O ( n888 ) ) ;
XNOR2X1TAS7 U440 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[11] ) , .O ( n891 ) ) ;
XOR2X2TAS7 U441 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[15] ) , .O ( n934 ) ) ;
XNOR2X1TAS7 U442 ( .I1 ( b_reg[4] ) , .I2 ( n717 ) , .O ( n693 ) ) ;
XOR2X1TAS7 U443 ( .I1 ( mult_x_2_n400 ) , .I2 ( n720 ) , .O ( n610 ) ) ;
BUFX2TAS7 U444 ( .I ( n613 ) , .O ( n320 ) ) ;
XOR2X1TAS7 U445 ( .I1 ( mult_x_2_n403 ) , .I2 ( n613 ) , .O ( n443 ) ) ;
NAND2B1X2TAS7 U446 ( .B2 ( n613 ) , .I1 ( n387 ) , .O ( n386 ) ) ;
INVX4TAS7 U447 ( .I ( n613 ) , .O ( n717 ) ) ;
CLKINVX1TAS7 U448 ( .I ( n536 ) , .O ( n337 ) ) ;
NAND2X2TAS7 U449 ( .I1 ( n386 ) , .I2 ( n384 ) , .O ( n317 ) ) ;
NAND2X2TAS7 U450 ( .I1 ( n386 ) , .I2 ( n384 ) , .O ( n318 ) ) ;
CLKBUFX1TAS7 U451 ( .I ( n298 ) , .O ( n319 ) ) ;
BUFX8TAS7 U452 ( .I ( n321 ) , .O ( n328 ) ) ;
NAND2B1X2TAS7 U453 ( .B2 ( n493 ) , .I1 ( n394 ) , .O ( n552 ) ) ;
NAND2B1X2TAS7 U454 ( .B2 ( n842 ) , .I1 ( a_reg[6] ) , .O ( n862 ) ) ;
XOR2X1TAS7 U455 ( .I1 ( n516 ) , .I2 ( n397 ) , .O ( n534 ) ) ;
XNOR2X2TAS7 U456 ( .I1 ( n701 ) , .I2 ( n702 ) , .O ( n390 ) ) ;
OAI12X1TAS7 U457 ( .B1 ( n703 ) , .B2 ( n702 ) , .A1 ( n701 ) , .O ( n389 ) ) ;
NAND2X1TAS7 U458 ( .I1 ( n702 ) , .I2 ( n703 ) , .O ( n388 ) ) ;
BUFX8TAS7 U459 ( .I ( n1016 ) , .O ( n321 ) ) ;
OR2X1TAS7 U460 ( .I1 ( n1025 ) , .I2 ( mult_x_2_a_6_ ) , .O ( n387 ) ) ;
OAI22X1TAS7 U461 ( .A1 ( n736 ) , .A2 ( n735 ) , .B1 ( mult_x_2_n32 ) , 
    .B2 ( n734 ) , .O ( n796 ) ) ;
BUFX2TAS7 U462 ( .I ( n872 ) , .O ( n322 ) ) ;
CLKINVX1TAS7 U463 ( .I ( n412 ) , .O ( n323 ) ) ;
OAI12X1TAS7 U464 ( .B1 ( n998 ) , .B2 ( n931 ) , .A1 ( n930 ) , .O ( n1005 ) ) ;
OAI12X1TAS7 U465 ( .B1 ( n998 ) , .B2 ( n971 ) , .A1 ( n970 ) , .O ( n972 ) ) ;
OAI12X1TAS7 U466 ( .B1 ( n998 ) , .B2 ( n997 ) , .A1 ( n996 ) , .O ( n999 ) ) ;
OAI12X1TAS7 U467 ( .B1 ( n998 ) , .B2 ( n983 ) , .A1 ( n982 ) , .O ( n984 ) ) ;
NAND2X2TAS7 U468 ( .I1 ( n493 ) , .I2 ( n492 ) , .O ( n551 ) ) ;
INVX1TAS7 U469 ( .I ( n523 ) , .O ( n524 ) ) ;
NAND2X1TAS7 U470 ( .I1 ( n452 ) , .I2 ( n372 ) , .O ( n366 ) ) ;
NOR2X1TAS7 U471 ( .I1 ( n452 ) , .I2 ( n307 ) , .O ( n479 ) ) ;
NAND2X1TAS7 U472 ( .I1 ( n452 ) , .I2 ( n307 ) , .O ( n480 ) ) ;
XNOR2X1TAS7 U473 ( .I1 ( n448 ) , .I2 ( n447 ) , .O ( n452 ) ) ;
CLKINVX1TAS7 U474 ( .I ( n517 ) , .O ( n412 ) ) ;
XOR2X1TAS7 U475 ( .I1 ( n517 ) , .I2 ( n398 ) , .O ( n397 ) ) ;
XNOR2X2TAS7 U476 ( .I1 ( n324 ) , .I2 ( n431 ) , .O ( n517 ) ) ;
CLKINVX1TAS7 U477 ( .I ( n1065 ) , .O ( n324 ) ) ;
NAND2X1TAS7 U478 ( .I1 ( n326 ) , .I2 ( n325 ) , .O ( mult_x_2_n193 ) ) ;
NAND2X1TAS7 U479 ( .I1 ( n679 ) , .I2 ( n680 ) , .O ( n325 ) ) ;
OAI12X1TAS7 U480 ( .B1 ( n680 ) , .B2 ( n679 ) , .A1 ( n678 ) , .O ( n326 ) ) ;
XNOR2X1TAS7 U481 ( .I1 ( n680 ) , .I2 ( n327 ) , .O ( mult_x_2_n194 ) ) ;
XNOR2X2TAS7 U482 ( .I1 ( n678 ) , .I2 ( n679 ) , .O ( n327 ) ) ;
BUFX1TAS7 U483 ( .I ( b_reg[4] ) , .O ( n329 ) ) ;
OAI12X1TAS7 U484 ( .B1 ( n528 ) , .B2 ( n529 ) , .A1 ( n527 ) , .O ( n523 ) ) ;
XNOR2X1TAS7 U485 ( .I1 ( n331 ) , .I2 ( n330 ) , .O ( mult_x_2_n141 ) ) ;
XNOR2X1TAS7 U486 ( .I1 ( n737 ) , .I2 ( n738 ) , .O ( n331 ) ) ;
OAI12X4TAS7 U487 ( .B1 ( n537 ) , .B2 ( n497 ) , .A1 ( n496 ) , .O ( n532 ) ) ;
AOI12X4TAS7 U488 ( .B1 ( n490 ) , .B2 ( n491 ) , .A1 ( n332 ) , .O ( n537 ) ) ;
NAND2X2TAS7 U489 ( .I1 ( n401 ) , .I2 ( n400 ) , .O ( n491 ) ) ;
XNOR2X1TAS7 U490 ( .I1 ( b_reg[7] ) , .I2 ( n769 ) , .O ( n639 ) ) ;
NAND2X2TAS7 U491 ( .I1 ( mult_x_2_a_6_ ) , .I2 ( n1025 ) , .O ( n385 ) ) ;
OAI112X1TAS7 U492 ( .C1 ( n809 ) , .C2 ( n808 ) , .A1 ( n334 ) , 
    .B1 ( n333 ) , .O ( my_alu_mul_res_5_ ) ) ;
NAND3B1X1TAS7 U493 ( .B3 ( n810 ) , .I1 ( n809 ) , .I2 ( n808 ) , 
    .O ( n333 ) ) ;
NAND2B1X1TAS7 U494 ( .B2 ( n809 ) , .I1 ( n810 ) , .O ( n334 ) ) ;
AOI12X2TAS7 U495 ( .B1 ( n294 ) , .B2 ( n780 ) , .A1 ( n779 ) , .O ( n809 ) ) ;
BUFX2TAS7 U496 ( .I ( b_reg[10] ) , .O ( n335 ) ) ;
BUFX2TAS7 U497 ( .I ( n575 ) , .O ( n336 ) ) ;
HAX1TAS7 U498 ( .I1 ( n765 ) , .I2 ( n764 ) , .CO ( n760 ) , .S ( n784 ) ) ;
XNOR2X1TAS7 U499 ( .I1 ( mult_x_2_n173 ) , .I2 ( n652 ) , .O ( n1019 ) ) ;
XNOR2X2TAS7 U500 ( .I1 ( n651 ) , .I2 ( n404 ) , .O ( n652 ) ) ;
XNOR2X1TAS7 U501 ( .I1 ( n338 ) , .I2 ( n409 ) , .O ( n495 ) ) ;
NAND2X2TAS7 U502 ( .I1 ( n631 ) , .I2 ( mult_x_2_n37 ) , .O ( n818 ) ) ;
OAI12X1TAS7 U503 ( .B1 ( mult_x_2_n37 ) , .B2 ( n632 ) , .A1 ( n339 ) , 
    .O ( n705 ) ) ;
NAND2X1TAS7 U504 ( .I1 ( n631 ) , .I2 ( n340 ) , .O ( n339 ) ) ;
NOR2B1X1TAS7 U505 ( .B2 ( mult_x_2_n37 ) , .I1 ( n633 ) , .O ( n340 ) ) ;
XNOR2X1TAS7 U506 ( .I1 ( n613 ) , .I2 ( b_reg[9] ) , .O ( n371 ) ) ;
CLKINVX1TAS7 U507 ( .I ( n578 ) , .O ( n342 ) ) ;
NAND2X1TAS7 U508 ( .I1 ( n523 ) , .I2 ( n377 ) , .O ( n419 ) ) ;
XNOR2X1TAS7 U509 ( .I1 ( b_reg[8] ) , .I2 ( n769 ) , .O ( n815 ) ) ;
XOR3X1TAS7 U510 ( .I1 ( n1056 ) , .I2 ( n503 ) , .I3 ( n502 ) , .O ( n510 ) ) ;
CLKINVX1TAS7 U511 ( .I ( n418 ) , .O ( n417 ) ) ;
FAX1TAS7 U512 ( .CI ( n795 ) , .I1 ( n793 ) , .I2 ( n794 ) , .CO ( n738 ) , 
    .S ( mult_x_2_n154 ) ) ;
OAI22X2TAS7 U513 ( .A1 ( n318 ) , .A2 ( n693 ) , .B1 ( n1024 ) , 
    .B2 ( n663 ) , .O ( n662 ) ) ;
XNOR2X1TAS7 U514 ( .I1 ( n554 ) , .I2 ( n553 ) , .O ( n555 ) ) ;
NAND2X1TAS7 U515 ( .I1 ( n344 ) , .I2 ( n343 ) , .O ( mult_x_2_n209 ) ) ;
NAND2X1TAS7 U516 ( .I1 ( n778 ) , .I2 ( n777 ) , .O ( n343 ) ) ;
NAND2X1TAS7 U517 ( .I1 ( n345 ) , .I2 ( n776 ) , .O ( n344 ) ) ;
OR2X1TAS7 U518 ( .I1 ( n778 ) , .I2 ( n777 ) , .O ( n345 ) ) ;
XNOR2X1TAS7 U519 ( .I1 ( n757 ) , .I2 ( n624 ) , .O ( mult_x_2_n208 ) ) ;
XOR2X1TAS7 U520 ( .I1 ( n778 ) , .I2 ( n346 ) , .O ( n757 ) ) ;
XOR2X1TAS7 U521 ( .I1 ( n777 ) , .I2 ( n776 ) , .O ( n346 ) ) ;
XOR2X1TAS7 U522 ( .I1 ( n697 ) , .I2 ( n347 ) , .O ( n680 ) ) ;
XOR2X1TAS7 U523 ( .I1 ( n695 ) , .I2 ( n696 ) , .O ( n347 ) ) ;
NAND2X2TAS7 U524 ( .I1 ( n349 ) , .I2 ( n348 ) , .O ( n696 ) ) ;
OR2X1TAS7 U525 ( .I1 ( n670 ) , .I2 ( n813 ) , .O ( n348 ) ) ;
XNOR2X1TAS7 U526 ( .I1 ( b_reg[9] ) , .I2 ( n1013 ) , .O ( n670 ) ) ;
OR2X1TAS7 U527 ( .I1 ( n669 ) , .I2 ( n937 ) , .O ( n349 ) ) ;
XNOR2X1TAS7 U528 ( .I1 ( b_reg[10] ) , .I2 ( n1013 ) , .O ( n669 ) ) ;
XOR2X1TAS7 U529 ( .I1 ( mult_x_2_n399 ) , .I2 ( n720 ) , .O ( n667 ) ) ;
NAND2X1TAS7 U530 ( .I1 ( n351 ) , .I2 ( n350 ) , .O ( n754 ) ) ;
NAND2X1TAS7 U531 ( .I1 ( n739 ) , .I2 ( n740 ) , .O ( n350 ) ) ;
NAND2X1TAS7 U532 ( .I1 ( n352 ) , .I2 ( n619 ) , .O ( n351 ) ) ;
OR2X1TAS7 U533 ( .I1 ( n739 ) , .I2 ( n740 ) , .O ( n352 ) ) ;
XNOR2X1TAS7 U534 ( .I1 ( n353 ) , .I2 ( n752 ) , .O ( mult_x_2_n214 ) ) ;
CLKINVX1TAS7 U535 ( .I ( n751 ) , .O ( n353 ) ) ;
XOR2X1TAS7 U536 ( .I1 ( n739 ) , .I2 ( n354 ) , .O ( n751 ) ) ;
XOR2X1TAS7 U537 ( .I1 ( n740 ) , .I2 ( n619 ) , .O ( n354 ) ) ;
CLKINVX1TAS7 U538 ( .I ( n615 ) , .O ( n616 ) ) ;
XOR2X1TAS7 U539 ( .I1 ( n769 ) , .I2 ( n768 ) , .O ( n771 ) ) ;
NAND2X1TAS7 U540 ( .I1 ( n358 ) , .I2 ( n729 ) , .O ( n357 ) ) ;
NAND2X1TAS7 U541 ( .I1 ( n360 ) , .I2 ( n359 ) , .O ( n358 ) ) ;
INVX1TAS7 U542 ( .I ( n362 ) , .O ( n359 ) ) ;
INVX1TAS7 U543 ( .I ( n730 ) , .O ( n360 ) ) ;
XOR2X1TAS7 U544 ( .I1 ( n729 ) , .I2 ( n362 ) , .O ( n361 ) ) ;
OAI22X2TAS7 U545 ( .A1 ( n818 ) , .A2 ( n816 ) , .B1 ( mult_x_2_n37 ) , 
    .B2 ( n716 ) , .O ( n362 ) ) ;
XOR2X1TAS7 U546 ( .I1 ( mult_x_2_n425 ) , .I2 ( b_reg[13] ) , .O ( n721 ) ) ;
XNOR2X1TAS7 U547 ( .I1 ( n722 ) , .I2 ( n277 ) , .O ( n363_CDR1 ) ) ;
NAND3X1TAS7 U548 ( .I1 ( n524 ) , .I2 ( n364 ) , .I3 ( n526 ) , .O ( n413 ) ) ;
NAND2X1TAS7 U549 ( .I1 ( n525 ) , .I2 ( n365 ) , .O ( n364 ) ) ;
CLKINVX1TAS7 U550 ( .I ( n414 ) , .O ( n365 ) ) ;
NOR2X1TAS7 U551 ( .I1 ( n528 ) , .I2 ( n521 ) , .O ( n525 ) ) ;
NAND2X1TAS7 U552 ( .I1 ( n368 ) , .I2 ( n367 ) , .O ( n580 ) ) ;
OR2X1TAS7 U553 ( .I1 ( n578 ) , .I2 ( mult_x_2_n9 ) , .O ( n367 ) ) ;
XNOR2X1TAS7 U554 ( .I1 ( mult_x_2_n404 ) , .I2 ( n321 ) , .O ( n578 ) ) ;
NAND2B1X1TAS7 U555 ( .B2 ( n767 ) , .I1 ( n369 ) , .O ( n368 ) ) ;
XNOR2X1TAS7 U556 ( .I1 ( n720 ) , .I2 ( mult_x_2_n43 ) , .O ( n369 ) ) ;
AOI12X2TAS7 U557 ( .B1 ( n532 ) , .B2 ( n531 ) , .A1 ( n530 ) , .O ( n533 ) ) ;
INVX1TAS7 U558 ( .I ( n222 ) , .O ( n1123 ) ) ;
OAI22B2X2TAS7 U559 ( .A1 ( n718 ) , .A2 ( n719 ) , .B1B ( n371 ) , 
    .B2B ( n370 ) , .O ( n723 ) ) ;
NAND2X1TAS7 U560 ( .I1 ( n540 ) , .I2 ( n421 ) , .O ( n420 ) ) ;
CLKINVX2TAS7 U561 ( .I ( n495 ) , .O ( n374 ) ) ;
CLKINVX1TAS7 U562 ( .I ( n398 ) , .O ( n376 ) ) ;
CLKINVX1TAS7 U563 ( .I ( n526 ) , .O ( n377 ) ) ;
NAND2X1TAS7 U564 ( .I1 ( n379 ) , .I2 ( n643 ) , .O ( n378 ) ) ;
NAND2X1TAS7 U565 ( .I1 ( n383 ) , .I2 ( n380 ) , .O ( n379 ) ) ;
NAND2X1TAS7 U566 ( .I1 ( n385 ) , .I2 ( n387 ) , .O ( n614 ) ) ;
NAND2X1TAS7 U567 ( .I1 ( n389 ) , .I2 ( n388 ) , .O ( mult_x_2_n183 ) ) ;
XNOR2X1TAS7 U568 ( .I1 ( n703 ) , .I2 ( n390 ) , .O ( mult_x_2_n184 ) ) ;
OR2X1TAS7 U569 ( .I1 ( n1040 ) , .I2 ( n1041 ) , .O ( n393 ) ) ;
XOR2X1TAS7 U570 ( .I1 ( n1040 ) , .I2 ( n395 ) , .O ( n493 ) ) ;
XOR2X1TAS7 U571 ( .I1 ( n1042 ) , .I2 ( n1041 ) , .O ( n395 ) ) ;
XOR2X1TAS7 U572 ( .I1 ( n1049 ) , .I2 ( n1050 ) , .O ( n409 ) ) ;
NAND2X1TAS7 U573 ( .I1 ( n396 ) , .I2 ( n522 ) , .O ( n527 ) ) ;
CLKINVX2TAS7 U574 ( .I ( n522 ) , .O ( n398 ) ) ;
XNOR2X1TAS7 U575 ( .I1 ( n403 ) , .I2 ( n453 ) , .O ( n402 ) ) ;
XOR2X1TAS7 U576 ( .I1 ( n650 ) , .I2 ( n649 ) , .O ( n404 ) ) ;
NAND2X1TAS7 U577 ( .I1 ( n646 ) , .I2 ( n648 ) , .O ( n628 ) ) ;
NOR2X1TAS7 U578 ( .I1 ( n710 ) , .I2 ( n638 ) , .O ( n626 ) ) ;
OR2X1TAS7 U579 ( .I1 ( n1048 ) , .I2 ( n1049 ) , .O ( n408 ) ) ;
CLKINVX1TAS7 U580 ( .I ( n410 ) , .O ( n557 ) ) ;
NAND4B1X1TAS7 U581 ( .B4 ( n550_CDR1 ) , .I1 ( n411_CDR1 ) , .I2 ( n915 ) , 
    .I3 ( n921 ) , .O ( n410 ) ) ;
CLKINVX1TAS7 U582 ( .I ( n311 ) , .O ( n411_CDR1 ) ) ;
XNOR2X1TAS7 U583 ( .I1 ( n490 ) , .I2 ( n458 ) , .O ( n459 ) ) ;
NAND2X1TAS7 U584 ( .I1 ( n500 ) , .I2 ( n432 ) , .O ( result_out[13] ) ) ;
NAND3X1TAS7 U585 ( .I1 ( n413 ) , .I2 ( n415 ) , .I3 ( n419 ) , .O ( n918 ) ) ;
CLKINVX1TAS7 U586 ( .I ( n532 ) , .O ( n414 ) ) ;
AOI12X1TAS7 U587 ( .B1 ( n417 ) , .B2 ( n525 ) , .A1 ( n416 ) , .O ( n415 ) ) ;
CLKINVX1TAS7 U588 ( .I ( n1079 ) , .O ( n416 ) ) ;
NAND2B1X1TAS7 U589 ( .B2 ( n526 ) , .I1 ( n299 ) , .O ( n418 ) ) ;
AND4X1TAS7 U590 ( .I1 ( n918 ) , .I2 ( n1010 ) , .I3 ( n557 ) , .I4 ( n556 ) , 
    .O ( flags_out[2] ) ) ;
NAND4B1X2TAS7 U591 ( .B4 ( n423 ) , .I1 ( n422 ) , .I2 ( n1079 ) , 
    .I3 ( n420 ) , .O ( n921 ) ) ;
NOR2B1X1TAS7 U592 ( .B2 ( n541 ) , .I1 ( n538 ) , .O ( n421 ) ) ;
OR2X1TAS7 U593 ( .I1 ( n540 ) , .I2 ( n541 ) , .O ( n422 ) ) ;
NOR2X1TAS7 U594 ( .I1 ( n541 ) , .I2 ( n539 ) , .O ( n423 ) ) ;
OAI112X2TAS7 U595 ( .C1 ( n481 ) , .C2 ( n427 ) , .A1 ( n425 ) , 
    .B1 ( n424 ) , .O ( n483 ) ) ;
NAND3B1X1TAS7 U596 ( .B3 ( n482 ) , .I1 ( n481 ) , .I2 ( n480 ) , 
    .O ( n424 ) ) ;
NAND2X1TAS7 U597 ( .I1 ( n429 ) , .I2 ( n428 ) , .O ( n502 ) ) ;
NAND2X1TAS7 U598 ( .I1 ( n1065 ) , .I2 ( n1066 ) , .O ( n428 ) ) ;
NAND2X1TAS7 U599 ( .I1 ( n430 ) , .I2 ( n1067 ) , .O ( n429 ) ) ;
OR2X1TAS7 U600 ( .I1 ( n1065 ) , .I2 ( n1066 ) , .O ( n430 ) ) ;
XOR2X1TAS7 U601 ( .I1 ( n1067 ) , .I2 ( n1066 ) , .O ( n431 ) ) ;
AOI12B2X1TAS7 U602 ( .B1B ( n1105 ) , .B2B ( n305 ) , .A1 ( n433 ) , 
    .O ( n432 ) ) ;
NAND3X2TAS7 U603 ( .I1 ( n1055 ) , .I2 ( n520 ) , .I3 ( n519 ) , .O ( n522 ) ) ;
CLKINVX1TAS7 U604 ( .I ( result_out[9] ) , .O ( n548 ) ) ;
XNOR2X1TAS7 U605 ( .I1 ( b_reg[7] ) , .I2 ( n1013 ) , .O ( n608 ) ) ;
NAND2B1X1TAS7 U606 ( .B2 ( n1106 ) , .I1 ( n1010 ) , .O ( result_out[14] ) ) ;
HAX1TAS7 U607 ( .I1 ( n662 ) , .I2 ( n661 ) , .CO ( n803 ) , .S ( n834 ) ) ;
NAND2X1TAS7 U608 ( .I1 ( n745 ) , .I2 ( n749 ) , .O ( n748 ) ) ;
CLKINVX1TAS7 U609 ( .I ( a_in[7] ) , .O ( n316 ) ) ;
BUFX8TAS7 U610 ( .I ( n1025 ) , .O ( n769 ) ) ;
NAND2X1TAS7 U611 ( .I1 ( n688 ) , .I2 ( n685 ) , .O ( n659 ) ) ;
BUFX2TAS7 U612 ( .I ( n609 ) , .O ( n776 ) ) ;
OAI12X1TAS7 U613 ( .B1 ( mult_x_2_n32 ) , .B2 ( n657 ) , .A1 ( n656 ) , 
    .O ( n686 ) ) ;
NAND2B1X1TAS7 U614 ( .B2 ( n1020 ) , .I1 ( n1014 ) , .O ( n640 ) ) ;
FAX1TAS7 U615 ( .CI ( n807 ) , .I1 ( n806 ) , .I2 ( n805 ) , .CO ( n702 ) , 
    .S ( mult_x_2_n196 ) ) ;
XNOR2X1TAS7 U616 ( .I1 ( n321 ) , .I2 ( b_reg[4] ) , .O ( n611 ) ) ;
NAND2B1X1TAS7 U617 ( .B2 ( mult_x_2_n43 ) , .I1 ( n321 ) , .O ( n565 ) ) ;
XNOR2X1TAS7 U618 ( .I1 ( mult_x_2_b_12_ ) , .I2 ( n321 ) , .O ( n732 ) ) ;
XNOR2X1TAS7 U619 ( .I1 ( b_reg[11] ) , .I2 ( n328 ) , .O ( n733 ) ) ;
XNOR2X1TAS7 U620 ( .I1 ( b_reg[9] ) , .I2 ( n321 ) , .O ( n654 ) ) ;
XNOR2X1TAS7 U621 ( .I1 ( mult_x_2_n400 ) , .I2 ( n717 ) , .O ( n663 ) ) ;
XNOR2X1TAS7 U622 ( .I1 ( b_reg[8] ) , .I2 ( n717 ) , .O ( n718 ) ) ;
NAND3X2TAS7 U623 ( .I1 ( n629 ) , .I2 ( n628 ) , .I3 ( n627 ) , .O ( n649 ) ) ;
HAX1TAS7 U624 ( .I1 ( n705 ) , .I2 ( n704 ) , .CO ( n795 ) , .S ( n650 ) ) ;
XNOR2X1TAS7 U625 ( .I1 ( b_reg[7] ) , .I2 ( n405 ) , .O ( n708 ) ) ;
XNOR2X1TAS7 U626 ( .I1 ( mult_x_2_n403 ) , .I2 ( n405 ) , .O ( n671 ) ) ;
XNOR2X1TAS7 U627 ( .I1 ( n405 ) , .I2 ( n1020 ) , .O ( n668 ) ) ;
XNOR2X1TAS7 U628 ( .I1 ( mult_x_2_n400 ) , .I2 ( n405 ) , .O ( n707 ) ) ;
XOR2X1TAS7 U629 ( .I1 ( mult_x_2_a_8_ ) , .I2 ( n1015 ) , .O ( n440 ) ) ;
XOR2X1TAS7 U630 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[3] ) , .O ( n592 ) ) ;
XNOR2X1TAS7 U631 ( .I1 ( b_reg[3] ) , .I2 ( n1013 ) , .O ( n576 ) ) ;
XNOR2X1TAS7 U632 ( .I1 ( b_reg[3] ) , .I2 ( n1014 ) , .O ( n735 ) ) ;
XNOR2X1TAS7 U633 ( .I1 ( b_reg[4] ) , .I2 ( n769 ) , .O ( n434 ) ) ;
OAI22B2X1TAS7 U634 ( .A1 ( n318 ) , .A2 ( n618 ) , .B1B ( n617 ) , 
    .B2B ( n616 ) , .O ( n619 ) ) ;
XNOR2X1TAS7 U635 ( .I1 ( b_reg[10] ) , .I2 ( n321 ) , .O ( n435 ) ) ;
CLKINVX1TAS7 U636 ( .I ( n736 ) , .O ( n655 ) ) ;
CLKINVX1TAS7 U637 ( .I ( n760 ) , .O ( n559 ) ) ;
XOR2X1TAS7 U638 ( .I1 ( n723 ) , .I2 ( n714 ) , .O ( n725_CDR1 ) ) ;
OAI22X1TAS7 U639 ( .A1 ( n710 ) , .A2 ( n707 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n709 ) , .O ( n793 ) ) ;
OAI22X1TAS7 U640 ( .A1 ( n767 ) , .A2 ( n733 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n297 ) , .O ( n797 ) ) ;
NAND2X1TAS7 U641 ( .I1 ( n775 ) , .I2 ( n774 ) , .O ( mult_x_2_n104 ) ) ;
INVX4TAS7 U642 ( .I ( mult_x_2_a_0_ ) , .O ( n937 ) ) ;
NAND2X4TAS7 U643 ( .I1 ( mult_x_2_n413 ) , .I2 ( n937 ) , .O ( n813 ) ) ;
XNOR2X1TAS7 U644 ( .I1 ( b_reg[8] ) , .I2 ( n1013 ) , .O ( n666 ) ) ;
OAI22X1TAS7 U645 ( .A1 ( n813 ) , .A2 ( n608 ) , .B1 ( n666 ) , .B2 ( n937 ) , 
    .O ( n623 ) ) ;
XOR2X2TAS7 U646 ( .I1 ( mult_x_2_n404 ) , .I2 ( n613 ) , .O ( n615 ) ) ;
OAI22X4TAS7 U647 ( .A1 ( n317 ) , .A2 ( n615 ) , .B1 ( n1024 ) , 
    .B2 ( n443 ) , .O ( n620 ) ) ;
NAND2B1X1TAS7 U648 ( .B2 ( n623 ) , .I1 ( n437 ) , .O ( n436 ) ) ;
NAND2X1TAS7 U649 ( .I1 ( n436 ) , .I2 ( n621 ) , .O ( n439 ) ) ;
NAND2B1X1TAS7 U650 ( .B2 ( n437 ) , .I1 ( n623 ) , .O ( n438 ) ) ;
NAND2X4TAS7 U651 ( .I1 ( n440 ) , .I2 ( mult_x_2_n27 ) , .O ( n710 ) ) ;
CLKINVX1TAS7 U652 ( .I ( n405 ) , .O ( n442 ) ) ;
NAND2B1X1TAS7 U653 ( .B2 ( n355 ) , .I1 ( n405 ) , .O ( n441 ) ) ;
OAI22X1TAS7 U654 ( .A1 ( n710 ) , .A2 ( n442 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n441 ) , .O ( n677 ) ) ;
XNOR2X1TAS7 U655 ( .I1 ( mult_x_2_n400 ) , .I2 ( n769 ) , .O ( n692 ) ) ;
OAI22X1TAS7 U656 ( .A1 ( mult_x_2_n17 ) , .A2 ( n434 ) , 
    .B1 ( mult_x_2_n16 ) , .B2 ( n692 ) , .O ( n676 ) ) ;
XNOR2X2TAS7 U657 ( .I1 ( b_reg[3] ) , .I2 ( n717 ) , .O ( n694 ) ) ;
OAI22X1TAS7 U658 ( .A1 ( n318 ) , .A2 ( n443 ) , .B1 ( n1024 ) , 
    .B2 ( n694 ) , .O ( n444 ) ) ;
FAX1TAS7 U659 ( .CI ( n445 ) , .I1 ( n446 ) , .I2 ( n444 ) , 
    .CO ( mult_x_2_n201 ) , .S ( mult_x_2_n202 ) ) ;
XOR2X1TAS7 U660 ( .I1 ( n1057 ) , .I2 ( n1059 ) , .O ( n447 ) ) ;
NOR2X1TAS7 U661 ( .I1 ( n302 ) , .I2 ( n306 ) , .O ( n461 ) ) ;
NOR2X1TAS7 U662 ( .I1 ( n461 ) , .I2 ( n471 ) , .O ( n451 ) ) ;
NOR2X1TAS7 U663 ( .I1 ( n1062 ) , .I2 ( n1063 ) , .O ( n449 ) ) ;
NAND2X1TAS7 U664 ( .I1 ( n302 ) , .I2 ( n306 ) , .O ( n462 ) ) ;
OAI12X1TAS7 U665 ( .B1 ( n449 ) , .B2 ( n472 ) , .A1 ( n462 ) , .O ( n450 ) ) ;
XOR2X1TAS7 U666 ( .I1 ( n1053 ) , .I2 ( n1052 ) , .O ( n453 ) ) ;
OR2X1TAS7 U667 ( .I1 ( n1058 ) , .I2 ( n1057 ) , .O ( n454 ) ) ;
NAND2X1TAS7 U668 ( .I1 ( n491 ) , .I2 ( n489 ) , .O ( n458 ) ) ;
NAND2B1X2TAS7 U669 ( .B2 ( n314 ) , .I1 ( n459 ) , .O ( n460 ) ) ;
OAI112X2TAS7 U670 ( .C1 ( n1102 ) , .C2 ( n305 ) , .A1 ( n460 ) , 
    .B1 ( n1101 ) , .O ( result_out[10] ) ) ;
CLKINVX1TAS7 U671 ( .I ( n461 ) , .O ( n463 ) ) ;
NAND2X1TAS7 U672 ( .I1 ( n463 ) , .I2 ( n462 ) , .O ( n466 ) ) ;
CLKINVX1TAS7 U673 ( .I ( n464 ) , .O ( n474 ) ) ;
OAI12X1TAS7 U674 ( .B1 ( n474 ) , .B2 ( n471 ) , .A1 ( n472 ) , .O ( n465 ) ) ;
XNOR2X1TAS7 U675 ( .I1 ( n466 ) , .I2 ( n465 ) , .O ( n467 ) ) ;
NAND2B1X1TAS7 U676 ( .B2 ( n314 ) , .I1 ( n467 ) , .O ( n468 ) ) ;
OAI112X1TAS7 U677 ( .C1 ( n1098 ) , .C2 ( n305 ) , .A1 ( n468 ) , 
    .B1 ( n1097 ) , .O ( result_out[8] ) ) ;
NAND2B1X1TAS7 U678 ( .B2 ( n314 ) , .I1 ( n469 ) , .O ( n470 ) ) ;
OAI112X1TAS7 U679 ( .C1 ( n1092 ) , .C2 ( n305 ) , .A1 ( n470 ) , 
    .B1 ( n1091 ) , .O ( result_out[6] ) ) ;
CLKINVX1TAS7 U680 ( .I ( n471 ) , .O ( n473 ) ) ;
NAND2X1TAS7 U681 ( .I1 ( n473 ) , .I2 ( n472 ) , .O ( n475 ) ) ;
XOR2X1TAS7 U682 ( .I1 ( n475 ) , .I2 ( n474 ) , .O ( n476 ) ) ;
NAND2B1X1TAS7 U683 ( .B2 ( n314 ) , .I1 ( n476 ) , .O ( n477 ) ) ;
OAI112X1TAS7 U684 ( .C1 ( n1096 ) , .C2 ( n305 ) , .A1 ( n477 ) , 
    .B1 ( n1095 ) , .O ( result_out[7] ) ) ;
NAND2B1X1TAS7 U685 ( .B2 ( n314 ) , .I1 ( n1080 ) , .O ( n478 ) ) ;
OAI112X1TAS7 U686 ( .C1 ( n1090 ) , .C2 ( n305 ) , .A1 ( n478 ) , 
    .B1 ( n1089 ) , .O ( result_out[5] ) ) ;
CLKINVX1TAS7 U687 ( .I ( n479 ) , .O ( n481 ) ) ;
OAI112X2TAS7 U688 ( .C1 ( n1100 ) , .C2 ( n305 ) , .A1 ( n483 ) , 
    .B1 ( n1099 ) , .O ( result_out[9] ) ) ;
NAND2X1TAS7 U689 ( .I1 ( n485 ) , .I2 ( n484 ) , .O ( n529 ) ) ;
NAND2X1TAS7 U690 ( .I1 ( n531 ) , .I2 ( n529 ) , .O ( n498 ) ) ;
OR2X1TAS7 U691 ( .I1 ( n1052 ) , .I2 ( n1053 ) , .O ( n486 ) ) ;
NAND2X1TAS7 U692 ( .I1 ( n495 ) , .I2 ( n494 ) , .O ( n536 ) ) ;
XNOR2X1TAS7 U693 ( .I1 ( n498 ) , .I2 ( n532 ) , .O ( n499 ) ) ;
NAND2B1X1TAS7 U694 ( .B2 ( n314 ) , .I1 ( n499 ) , .O ( n500 ) ) ;
NAND2X1TAS7 U695 ( .I1 ( n1070 ) , .I2 ( n1071 ) , .O ( n501 ) ) ;
CLKINVX1TAS7 U696 ( .I ( n1070 ) , .O ( n505 ) ) ;
XOR2X1TAS7 U697 ( .I1 ( n1072 ) , .I2 ( n1071 ) , .O ( n504 ) ) ;
XNOR2X2TAS7 U698 ( .I1 ( n505 ) , .I2 ( n504 ) , .O ( n514 ) ) ;
NAND2X1TAS7 U699 ( .I1 ( n514 ) , .I2 ( n517 ) , .O ( n509 ) ) ;
NAND2X1TAS7 U700 ( .I1 ( n514 ) , .I2 ( n309 ) , .O ( n508 ) ) ;
CLKINVX1TAS7 U701 ( .I ( n309 ) , .O ( n506 ) ) ;
NAND2B1X1TAS7 U702 ( .B2 ( n506 ) , .I1 ( n517 ) , .O ( n507 ) ) ;
NAND3X1TAS7 U703 ( .I1 ( n509 ) , .I2 ( n508 ) , .I3 ( n507 ) , .O ( n511 ) ) ;
OR2X1TAS7 U704 ( .I1 ( n510 ) , .I2 ( n511 ) , .O ( n513 ) ) ;
NAND2X1TAS7 U705 ( .I1 ( n511 ) , .I2 ( n510 ) , .O ( n512 ) ) ;
CLKINVX1TAS7 U706 ( .I ( n1051 ) , .O ( n515 ) ) ;
NAND2X1TAS7 U707 ( .I1 ( n1061 ) , .I2 ( n518 ) , .O ( n520 ) ) ;
NAND2X1TAS7 U708 ( .I1 ( n1060 ) , .I2 ( n518 ) , .O ( n519 ) ) ;
CLKINVX1TAS7 U709 ( .I ( n529 ) , .O ( n530 ) ) ;
XOR2X1TAS7 U710 ( .I1 ( n533 ) , .I2 ( n534 ) , .O ( n535 ) ) ;
NAND2X2TAS7 U711 ( .I1 ( n535 ) , .I2 ( n1079 ) , .O ( n1010 ) ) ;
CLKINVX2TAS7 U712 ( .I ( n537 ) , .O ( n553 ) ) ;
NAND2X2TAS7 U713 ( .I1 ( n553 ) , .I2 ( n552 ) , .O ( n540 ) ) ;
CLKINVX1TAS7 U714 ( .I ( n538 ) , .O ( n539 ) ) ;
CLKINVX1TAS7 U715 ( .I ( result_out[5] ) , .O ( n547_CDR1 ) ) ;
CLKINVX1TAS7 U716 ( .I ( n1093 ) , .O ( n544_CDR1 ) ) ;
NAND4B1X1TAS7 U717 ( .B4 ( n312 ) , .I1 ( n1085 ) , .I2 ( n1083 ) , 
    .I3 ( n313 ) , .O ( n542_CDR1 ) ) ;
NOR3X1TAS7 U718 ( .I1 ( n542_CDR1 ) , .I2 ( result_out[2] ) , 
    .I3 ( result_out[10] ) , .O ( n543_CDR1 ) ) ;
NAND4B1X1TAS7 U719 ( .B4 ( result_out[8] ) , .I1 ( n544_CDR1 ) , 
    .I2 ( n543_CDR1 ) , .I3 ( n1084 ) , .O ( n545_CDR1 ) ) ;
NOR3X1TAS7 U720 ( .I1 ( result_out[7] ) , .I2 ( result_out[6] ) , 
    .I3 ( n545_CDR1 ) , .O ( n546_CDR1 ) ) ;
NAND2X1TAS7 U721 ( .I1 ( n547_CDR1 ) , .I2 ( n546_CDR1 ) , .O ( n549_CDR1 ) ) ;
NAND2B1X1TAS7 U722 ( .B2 ( n549_CDR1 ) , .I1 ( n548 ) , .O ( n550_CDR1 ) ) ;
NAND2X1TAS7 U723 ( .I1 ( n552 ) , .I2 ( n551 ) , .O ( n554 ) ) ;
NAND2X1TAS7 U724 ( .I1 ( n555 ) , .I2 ( n1103 ) , .O ( n915 ) ) ;
CLKINVX1TAS7 U725 ( .I ( result_out[13] ) , .O ( n556 ) ) ;
OAI22X2TAS7 U726 ( .A1 ( n813 ) , .A2 ( mult_x_2_n383 ) , 
    .B1 ( mult_x_2_n382 ) , .B2 ( n937 ) , .O ( n742 ) ) ;
CLKINVX1TAS7 U727 ( .I ( n1023 ) , .O ( n770 ) ) ;
OAI22X1TAS7 U728 ( .A1 ( mult_x_2_n17 ) , .A2 ( n770 ) , 
    .B1 ( mult_x_2_n16 ) , .B2 ( mult_x_2_n354 ) , .O ( n741 ) ) ;
XNOR2X1TAS7 U729 ( .I1 ( b_reg[4] ) , .I2 ( n1013 ) , .O ( n575 ) ) ;
OAI22X1TAS7 U730 ( .A1 ( n813 ) , .A2 ( n575 ) , .B1 ( mult_x_2_n383 ) , 
    .B2 ( n937 ) , .O ( n765 ) ) ;
OR2X1TAS7 U731 ( .I1 ( n1020 ) , .I2 ( mult_x_2_n424 ) , .O ( n558 ) ) ;
OAI22X1TAS7 U732 ( .A1 ( mult_x_2_n17 ) , .A2 ( mult_x_2_n424 ) , 
    .B1 ( mult_x_2_n16 ) , .B2 ( n558 ) , .O ( n764 ) ) ;
NAND2B1X1TAS7 U733 ( .B2 ( n762 ) , .I1 ( n559 ) , .O ( n560 ) ) ;
OAI22X1TAS7 U734 ( .A1 ( n767 ) , .A2 ( n766 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n611 ) , .O ( n761 ) ) ;
NAND2X1TAS7 U735 ( .I1 ( n560 ) , .I2 ( n761 ) , .O ( n562 ) ) ;
NAND2X1TAS7 U736 ( .I1 ( n762 ) , .I2 ( n760 ) , .O ( n561 ) ) ;
NAND2X1TAS7 U737 ( .I1 ( n562 ) , .I2 ( n561 ) , .O ( mult_x_2_n219 ) ) ;
CLKINVX1TAS7 U738 ( .I ( n564 ) , .O ( n563 ) ) ;
NAND2X1TAS7 U739 ( .I1 ( n563 ) , .I2 ( alu_ctrl_reg[2] ) , .O ( n1119 ) ) ;
CLKINVX1TAS7 U740 ( .I ( alu_ctrl_reg[2] ) , .O ( n600 ) ) ;
NAND2X1TAS7 U741 ( .I1 ( n600 ) , .I2 ( alu_ctrl_reg[1] ) , .O ( n1121 ) ) ;
OAI22X1TAS7 U742 ( .A1 ( n767 ) , .A2 ( n720 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n565 ) , .O ( n581 ) ) ;
XNOR2X1TAS7 U743 ( .I1 ( mult_x_2_n403 ) , .I2 ( n1013 ) , .O ( n566 ) ) ;
OAI22X1TAS7 U744 ( .A1 ( n813 ) , .A2 ( n566 ) , .B1 ( n576 ) , .B2 ( n937 ) , 
    .O ( n573 ) ) ;
XNOR2X1TAS7 U745 ( .I1 ( mult_x_2_n404 ) , .I2 ( n1013 ) , .O ( n567 ) ) ;
OAI22X1TAS7 U746 ( .A1 ( n813 ) , .A2 ( n567 ) , .B1 ( n566 ) , .B2 ( n937 ) , 
    .O ( n571 ) ) ;
NOR2B1X1TAS7 U747 ( .B2 ( n355 ) , .I1 ( mult_x_2_n9 ) , .O ( n570 ) ) ;
OR2X1TAS7 U748 ( .I1 ( n571 ) , .I2 ( n570 ) , .O ( n904 ) ) ;
XNOR2X1TAS7 U749 ( .I1 ( mult_x_2_n43 ) , .I2 ( n1013 ) , .O ( n568 ) ) ;
OAI22X1TAS7 U750 ( .A1 ( n813 ) , .A2 ( n568 ) , .B1 ( n567 ) , .B2 ( n937 ) , 
    .O ( n944 ) ) ;
NAND2B1X1TAS7 U751 ( .B2 ( n355 ) , .I1 ( n1012 ) , .O ( n569 ) ) ;
OAI22X1TAS7 U752 ( .A1 ( n813 ) , .A2 ( n1011 ) , .B1 ( n569 ) , 
    .B2 ( n937 ) , .O ( n943 ) ) ;
NAND2X1TAS7 U753 ( .I1 ( n944 ) , .I2 ( n943 ) , .O ( n946 ) ) ;
CLKINVX1TAS7 U754 ( .I ( n946 ) , .O ( n906 ) ) ;
NAND2X1TAS7 U755 ( .I1 ( n571 ) , .I2 ( n570 ) , .O ( n903 ) ) ;
CLKINVX1TAS7 U756 ( .I ( n903 ) , .O ( n572 ) ) ;
AOI12X1TAS7 U757 ( .B1 ( n904 ) , .B2 ( n906 ) , .A1 ( n572 ) , .O ( n958 ) ) ;
NAND2X1TAS7 U758 ( .I1 ( n574 ) , .I2 ( n573 ) , .O ( n956 ) ) ;
OAI12X1TAS7 U759 ( .B1 ( n955 ) , .B2 ( n958 ) , .A1 ( n956 ) , .O ( n780 ) ) ;
OAI22X4TAS7 U760 ( .A1 ( n813 ) , .A2 ( n576 ) , .B1 ( n336 ) , .B2 ( n937 ) , 
    .O ( n787 ) ) ;
XNOR2X1TAS7 U761 ( .I1 ( n789 ) , .I2 ( n579 ) , .O ( n583 ) ) ;
OR2X1TAS7 U762 ( .I1 ( n583 ) , .I2 ( n582 ) , .O ( n781 ) ) ;
XNOR2X1TAS7 U763 ( .I1 ( n780 ) , .I2 ( n584 ) , .O ( n585 ) ) ;
NAND2B1X1TAS7 U764 ( .B2 ( n1119 ) , .I1 ( n585 ) , .O ( n606 ) ) ;
CLKINVX1TAS7 U765 ( .I ( a_reg[4] ) , .O ( n919 ) ) ;
NOR2X1TAS7 U766 ( .I1 ( n587 ) , .I2 ( n919 ) , .O ( n586 ) ) ;
CLKINVX1TAS7 U767 ( .I ( n586 ) , .O ( n843 ) ) ;
NAND2X1TAS7 U768 ( .I1 ( n587 ) , .I2 ( n919 ) , .O ( n838 ) ) ;
NAND2X1TAS7 U769 ( .I1 ( n843 ) , .I2 ( n838 ) , .O ( n598 ) ) ;
OAI12B2X1TAS7 U770 ( .B1B ( n942 ) , .B2B ( a_reg[1] ) , .A1 ( n1113 ) , 
    .O ( n588 ) ) ;
CLKINVX1TAS7 U771 ( .I ( n901 ) , .O ( n591 ) ) ;
CLKINVX1TAS7 U772 ( .I ( a_reg[2] ) , .O ( n589 ) ) ;
OAI12X1TAS7 U773 ( .B1 ( n901 ) , .B2 ( n589 ) , .A1 ( n902 ) , .O ( n590 ) ) ;
NAND2X1TAS7 U774 ( .I1 ( n592 ) , .I2 ( a_reg[3] ) , .O ( n596 ) ) ;
CLKINVX1TAS7 U775 ( .I ( n592 ) , .O ( n594 ) ) ;
CLKINVX1TAS7 U776 ( .I ( a_reg[3] ) , .O ( n593 ) ) ;
NAND2X1TAS7 U777 ( .I1 ( n594 ) , .I2 ( n593 ) , .O ( n595 ) ) ;
INVX2TAS7 U778 ( .I ( n597 ) , .O ( n873 ) ) ;
XNOR2X1TAS7 U779 ( .I1 ( n598 ) , .I2 ( n873 ) , .O ( n604 ) ) ;
CLKINVX1TAS7 U780 ( .I ( alu_ctrl_reg[1] ) , .O ( n599 ) ) ;
NAND3X1TAS7 U781 ( .I1 ( n600 ) , .I2 ( n599 ) , .I3 ( alu_ctrl_reg[0] ) , 
    .O ( n601 ) ) ;
CLKINVX2TAS7 U782 ( .I ( n601 ) , .O ( n835 ) ) ;
AOI22X1TAS7 U783 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[4] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[4] ) , .O ( n602 ) ) ;
CLKINVX1TAS7 U784 ( .I ( n602 ) , .O ( n603 ) ) ;
AOI12B2X1TAS7 U785 ( .B1B ( n604 ) , .B2B ( n1121 ) , .A1 ( n603 ) , 
    .O ( n605 ) ) ;
OR2X1TAS7 U786 ( .I1 ( n1020 ) , .I2 ( n320 ) , .O ( n607 ) ) ;
OAI22X1TAS7 U787 ( .A1 ( n317 ) , .A2 ( n320 ) , .B1 ( n1024 ) , 
    .B2 ( n607 ) , .O ( n744 ) ) ;
OAI22X1TAS7 U788 ( .A1 ( n813 ) , .A2 ( mult_x_2_n382 ) , .B1 ( n608 ) , 
    .B2 ( n937 ) , .O ( n743 ) ) ;
OAI22X1TAS7 U789 ( .A1 ( n767 ) , .A2 ( n610 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n667 ) , .O ( n777 ) ) ;
OAI22X1TAS7 U790 ( .A1 ( mult_x_2_n17 ) , .A2 ( n612 ) , 
    .B1 ( mult_x_2_n16 ) , .B2 ( n434 ) , .O ( n609 ) ) ;
OAI22X1TAS7 U791 ( .A1 ( n767 ) , .A2 ( n611 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n610 ) , .O ( n740 ) ) ;
OAI22X1TAS7 U792 ( .A1 ( mult_x_2_n17 ) , .A2 ( mult_x_2_n354 ) , 
    .B1 ( mult_x_2_n16 ) , .B2 ( n612 ) , .O ( n739 ) ) ;
XNOR2X1TAS7 U793 ( .I1 ( n320 ) , .I2 ( n768 ) , .O ( n618 ) ) ;
XOR2X1TAS7 U794 ( .I1 ( n621 ) , .I2 ( n620 ) , .O ( n622 ) ) ;
XOR2X1TAS7 U795 ( .I1 ( n623 ) , .I2 ( n622 ) , .O ( n756 ) ) ;
XNOR2X2TAS7 U796 ( .I1 ( n754 ) , .I2 ( n756 ) , .O ( n624 ) ) ;
NAND2X1TAS7 U797 ( .I1 ( n648 ) , .I2 ( n647 ) , .O ( n629 ) ) ;
NOR2X1TAS7 U798 ( .I1 ( mult_x_2_n27 ) , .I2 ( n634 ) , .O ( n625 ) ) ;
OR2X2TAS7 U799 ( .I1 ( n626 ) , .I2 ( n625 ) , .O ( n646 ) ) ;
NAND2X1TAS7 U800 ( .I1 ( n646 ) , .I2 ( n647 ) , .O ( n627 ) ) ;
CLKINVX1TAS7 U801 ( .I ( n649 ) , .O ( n637 ) ) ;
XNOR2X1TAS7 U802 ( .I1 ( b_reg[11] ) , .I2 ( n1012 ) , .O ( n653 ) ) ;
OAI22X1TAS7 U803 ( .A1 ( n813 ) , .A2 ( n653 ) , .B1 ( mult_x_2_n376 ) , 
    .B2 ( n937 ) , .O ( n645 ) ) ;
XNOR2X1TAS7 U804 ( .I1 ( mult_x_2_n404 ) , .I2 ( n1014 ) , .O ( n657 ) ) ;
OR2X1TAS7 U805 ( .I1 ( n657 ) , .I2 ( n736 ) , .O ( n630 ) ) ;
XNOR2X1TAS7 U806 ( .I1 ( mult_x_2_n403 ) , .I2 ( n1014 ) , .O ( n665 ) ) ;
NOR2B1X1TAS7 U807 ( .B2 ( mult_x_2_n43 ) , .I1 ( mult_x_2_n37 ) , 
    .O ( n643 ) ) ;
CLKINVX1TAS7 U808 ( .I ( n651 ) , .O ( n636 ) ) ;
XOR2X2TAS7 U809 ( .I1 ( mult_x_2_a_12_ ) , .I2 ( mult_x_2_n36 ) , 
    .O ( n631 ) ) ;
CLKINVX1TAS7 U810 ( .I ( mult_x_2_n36 ) , .O ( n633 ) ) ;
NAND2B1X1TAS7 U811 ( .B2 ( n1020 ) , .I1 ( mult_x_2_n36 ) , .O ( n632 ) ) ;
OAI22X4TAS7 U812 ( .A1 ( n710 ) , .A2 ( n634 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n707 ) , .O ( n704 ) ) ;
OAI12X1TAS7 U813 ( .B1 ( n651 ) , .B2 ( n649 ) , .A1 ( n650 ) , .O ( n635 ) ) ;
OAI12X1TAS7 U814 ( .B1 ( n637 ) , .B2 ( n636 ) , .A1 ( n635 ) , 
    .O ( mult_x_2_n163 ) ) ;
OAI22X1TAS7 U815 ( .A1 ( n710 ) , .A2 ( n671 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n638 ) , .O ( n831 ) ) ;
XOR2X1TAS7 U816 ( .I1 ( mult_x_2_n399 ) , .I2 ( mult_x_2_n424 ) , 
    .O ( n691 ) ) ;
OAI22X1TAS7 U817 ( .A1 ( mult_x_2_n17 ) , .A2 ( n691 ) , .B1 ( n814 ) , 
    .B2 ( n639 ) , .O ( n832 ) ) ;
NAND2X1TAS7 U818 ( .I1 ( n831 ) , .I2 ( n832 ) , .O ( n642 ) ) ;
CLKINVX1TAS7 U819 ( .I ( n1014 ) , .O ( n641 ) ) ;
OAI22X1TAS7 U820 ( .A1 ( n736 ) , .A2 ( n641 ) , .B1 ( mult_x_2_n32 ) , 
    .B2 ( n640 ) , .O ( n661 ) ) ;
OAI22X1TAS7 U821 ( .A1 ( n813 ) , .A2 ( n669 ) , .B1 ( n653 ) , .B2 ( n937 ) , 
    .O ( n688 ) ) ;
OAI22X1TAS7 U822 ( .A1 ( n689 ) , .A2 ( n767 ) , .B1 ( n654 ) , 
    .B2 ( mult_x_2_n9 ) , .O ( n685 ) ) ;
NAND2X1TAS7 U823 ( .I1 ( n226 ) , .I2 ( n655 ) , .O ( n656 ) ) ;
NAND2X1TAS7 U824 ( .I1 ( n658 ) , .I2 ( n686 ) , .O ( n660 ) ) ;
NAND2X1TAS7 U825 ( .I1 ( n660 ) , .I2 ( n659 ) , .O ( n804 ) ) ;
OAI22X1TAS7 U826 ( .A1 ( n317 ) , .A2 ( n663 ) , .B1 ( n1024 ) , 
    .B2 ( n664 ) , .O ( n802 ) ) ;
OAI22X1TAS7 U827 ( .A1 ( n767 ) , .A2 ( n435 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n733 ) , .O ( n801 ) ) ;
OAI22X1TAS7 U828 ( .A1 ( n318 ) , .A2 ( n664 ) , .B1 ( n1024 ) , 
    .B2 ( n706 ) , .O ( n800 ) ) ;
OAI22X1TAS7 U829 ( .A1 ( n736 ) , .A2 ( n665 ) , .B1 ( mult_x_2_n32 ) , 
    .B2 ( n735 ) , .O ( n799 ) ) ;
OAI22X1TAS7 U830 ( .A1 ( n813 ) , .A2 ( n666 ) , .B1 ( n670 ) , .B2 ( n937 ) , 
    .O ( n675 ) ) ;
XOR2X2TAS7 U831 ( .I1 ( n720 ) , .I2 ( b_reg[7] ) , .O ( n690 ) ) ;
OAI22X2TAS7 U832 ( .A1 ( n767 ) , .A2 ( n667 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n690 ) , .O ( n674 ) ) ;
XNOR2X1TAS7 U833 ( .I1 ( mult_x_2_n404 ) , .I2 ( n405 ) , .O ( n672 ) ) ;
OAI22X1TAS7 U834 ( .A1 ( n710 ) , .A2 ( n668 ) , .B1 ( n672 ) , 
    .B2 ( mult_x_2_n27 ) , .O ( n673 ) ) ;
NOR2B1X1TAS7 U835 ( .B2 ( n1020 ) , .I1 ( mult_x_2_n32 ) , .O ( n695 ) ) ;
OAI22X1TAS7 U836 ( .A1 ( n710 ) , .A2 ( n672 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n671 ) , .O ( n697 ) ) ;
FAX1TAS7 U837 ( .CI ( n675 ) , .I1 ( n673 ) , .I2 ( n674 ) , .CO ( n679 ) , 
    .S ( mult_x_2_n204 ) ) ;
XOR2X1TAS7 U838 ( .I1 ( n683 ) , .I2 ( n684 ) , .O ( mult_x_2_n174 ) ) ;
XOR2X1TAS7 U839 ( .I1 ( n686 ) , .I2 ( n685 ) , .O ( n687 ) ) ;
XOR2X1TAS7 U840 ( .I1 ( n688 ) , .I2 ( n687 ) , .O ( n703 ) ) ;
OAI22X1TAS7 U841 ( .A1 ( n767 ) , .A2 ( n690 ) , .B1 ( mult_x_2_n9 ) , 
    .B2 ( n689 ) , .O ( n807 ) ) ;
OAI22X1TAS7 U842 ( .A1 ( mult_x_2_n17 ) , .A2 ( n692 ) , .B1 ( n814 ) , 
    .B2 ( n691 ) , .O ( n806 ) ) ;
OAI22X2TAS7 U843 ( .A1 ( n317 ) , .A2 ( n694 ) , .B1 ( n1024 ) , 
    .B2 ( n693 ) , .O ( n805 ) ) ;
NAND2X1TAS7 U844 ( .I1 ( n695 ) , .I2 ( n697 ) , .O ( n700 ) ) ;
NAND2X1TAS7 U845 ( .I1 ( n695 ) , .I2 ( n696 ) , .O ( n699 ) ) ;
NAND2X1TAS7 U846 ( .I1 ( n696 ) , .I2 ( n697 ) , .O ( n698 ) ) ;
NAND3X1TAS7 U847 ( .I1 ( n700 ) , .I2 ( n699 ) , .I3 ( n698 ) , .O ( n701 ) ) ;
OAI22X2TAS7 U848 ( .A1 ( mult_x_2_n17 ) , .A2 ( n227 ) , .B1 ( n814 ) , 
    .B2 ( n728 ) , .O ( n730 ) ) ;
XNOR2X2TAS7 U849 ( .I1 ( mult_x_2_n404 ) , .I2 ( mult_x_2_n36 ) , 
    .O ( n816 ) ) ;
NOR2B1X1TAS7 U850 ( .B2 ( mult_x_2_n43 ) , .I1 ( mult_x_2_n41 ) , 
    .O ( n729 ) ) ;
OAI22X1TAS7 U851 ( .A1 ( n318 ) , .A2 ( n706 ) , .B1 ( n1024 ) , 
    .B2 ( n718 ) , .O ( n794 ) ) ;
XNOR2X1TAS7 U852 ( .I1 ( mult_x_2_n399 ) , .I2 ( n405 ) , .O ( n709 ) ) ;
OAI22X1TAS7 U853 ( .A1 ( n710 ) , .A2 ( n709 ) , .B1 ( mult_x_2_n27 ) , 
    .B2 ( n708 ) , .O ( n726 ) ) ;
NAND2X1TAS7 U854 ( .I1 ( mult_x_2_n406 ) , .I2 ( mult_x_2_n41 ) , 
    .O ( n727 ) ) ;
CLKINVX1TAS7 U855 ( .I ( mult_x_2_n40 ) , .O ( n712 ) ) ;
NAND2B1X1TAS7 U856 ( .B2 ( n1020 ) , .I1 ( mult_x_2_n40 ) , .O ( n711 ) ) ;
OAI22X1TAS7 U857 ( .A1 ( n727 ) , .A2 ( n712 ) , .B1 ( mult_x_2_n41 ) , 
    .B2 ( n711 ) , .O ( n713 ) ) ;
OAI22X1TAS7 U858 ( .A1 ( n818 ) , .A2 ( n716 ) , .B1 ( mult_x_2_n37 ) , 
    .B2 ( n715 ) , .O ( n724 ) ) ;
OAI22X1TAS7 U859 ( .A1 ( n767 ) , .A2 ( n732 ) , .B1 ( n721 ) , 
    .B2 ( mult_x_2_n9 ) , .O ( n722 ) ) ;
XNOR2X1TAS7 U860 ( .I1 ( b_reg[14] ) , .I2 ( n1012 ) , .O ( n731 ) ) ;
XNOR2X1TAS7 U861 ( .I1 ( n301 ) , .I2 ( n1012 ) , .O ( n812 ) ) ;
OAI22X1TAS7 U862 ( .A1 ( n813 ) , .A2 ( n812 ) , .B1 ( n731 ) , .B2 ( n937 ) , 
    .O ( n798 ) ) ;
FAX1TAS7 U863 ( .CI ( n742 ) , .I1 ( n741 ) , .I2 ( mult_x_2_n268 ) , 
    .CO ( n746 ) , .S ( n762 ) ) ;
OR2X1TAS7 U864 ( .I1 ( n751 ) , .I2 ( n746 ) , .O ( n745 ) ) ;
CLKINVX1TAS7 U865 ( .I ( n746 ) , .O ( n750 ) ) ;
NAND2B1X1TAS7 U866 ( .B2 ( n750 ) , .I1 ( n751 ) , .O ( n747 ) ) ;
NAND2X1TAS7 U867 ( .I1 ( n748 ) , .I2 ( n747 ) , .O ( mult_x_2_n213 ) ) ;
XNOR2X1TAS7 U868 ( .I1 ( n750 ) , .I2 ( n749 ) , .O ( n752 ) ) ;
CLKINVX1TAS7 U869 ( .I ( n756 ) , .O ( n753 ) ) ;
NAND2B1X1TAS7 U870 ( .B2 ( n757 ) , .I1 ( n753 ) , .O ( n755 ) ) ;
NAND2X1TAS7 U871 ( .I1 ( n755 ) , .I2 ( n754 ) , .O ( n759 ) ) ;
NAND2X1TAS7 U872 ( .I1 ( n757 ) , .I2 ( n756 ) , .O ( n758 ) ) ;
NAND2X1TAS7 U873 ( .I1 ( n759 ) , .I2 ( n758 ) , .O ( mult_x_2_n207 ) ) ;
XNOR2X1TAS7 U874 ( .I1 ( n761 ) , .I2 ( n760 ) , .O ( n763 ) ) ;
XNOR2X1TAS7 U875 ( .I1 ( n763 ) , .I2 ( n762 ) , .O ( n775 ) ) ;
OAI22X1TAS7 U876 ( .A1 ( mult_x_2_n17 ) , .A2 ( n771 ) , .B1 ( n814 ) , 
    .B2 ( n770 ) , .O ( n783 ) ) ;
OAI12X1TAS7 U877 ( .B1 ( n784 ) , .B2 ( n782 ) , .A1 ( n783 ) , .O ( n773 ) ) ;
NAND2X1TAS7 U878 ( .I1 ( n784 ) , .I2 ( n782 ) , .O ( n772 ) ) ;
NAND2X1TAS7 U879 ( .I1 ( n773 ) , .I2 ( n772 ) , .O ( n774 ) ) ;
NOR2X2TAS7 U880 ( .I1 ( n775 ) , .I2 ( n774 ) , .O ( mult_x_2_n103 ) ) ;
NAND2B1X1TAS7 U881 ( .B2 ( mult_x_2_n103 ) , .I1 ( mult_x_2_n104 ) , 
    .O ( mult_x_2_n54 ) ) ;
XNOR2X1TAS7 U882 ( .I1 ( n783 ) , .I2 ( n782 ) , .O ( n785 ) ) ;
XNOR2X1TAS7 U883 ( .I1 ( n785 ) , .I2 ( n784 ) , .O ( n792 ) ) ;
OAI12X1TAS7 U884 ( .B1 ( n790 ) , .B2 ( n789 ) , .A1 ( n788 ) , .O ( n791 ) ) ;
NOR2X2TAS7 U885 ( .I1 ( n792 ) , .I2 ( n791 ) , .O ( n810 ) ) ;
NAND2X1TAS7 U886 ( .I1 ( n792 ) , .I2 ( n791 ) , .O ( n808 ) ) ;
XNOR2X1TAS7 U887 ( .I1 ( b_in[12] ) , .I2 ( a_in[1] ) , .O ( n1039 ) ) ;
XNOR2X1TAS7 U888 ( .I1 ( b_in[6] ) , .I2 ( a_in[1] ) , .O ( n1043 ) ) ;
XNOR2X1TAS7 U889 ( .I1 ( b_in[5] ) , .I2 ( a_in[1] ) , .O ( n1044 ) ) ;
XOR2X1TAS7 U890 ( .I1 ( a_in[14] ) , .I2 ( a_in[15] ) , .O ( n1035 ) ) ;
XNOR2X1TAS7 U891 ( .I1 ( a_in[14] ) , .I2 ( a_in[13] ) , .O ( n1037 ) ) ;
XNOR2X1TAS7 U892 ( .I1 ( a_in[12] ) , .I2 ( a_in[11] ) , .O ( n1030 ) ) ;
XOR2X1TAS7 U893 ( .I1 ( a_in[0] ) , .I2 ( a_in[1] ) , .O ( n1038 ) ) ;
OAI12X1TAS7 U894 ( .B1 ( n810 ) , .B2 ( n809 ) , .A1 ( n808 ) , .O ( n811 ) ) ;
CLKINVX1TAS7 U895 ( .I ( n811 ) , .O ( mult_x_2_n105 ) ) ;
OAI22X1TAS7 U896 ( .A1 ( n813 ) , .A2 ( mult_x_2_n376 ) , .B1 ( n812 ) , 
    .B2 ( n937 ) , .O ( n819 ) ) ;
OAI22X1TAS7 U897 ( .A1 ( mult_x_2_n17 ) , .A2 ( n815 ) , .B1 ( n814 ) , 
    .B2 ( n227 ) , .O ( n821 ) ) ;
XNOR2X1TAS7 U898 ( .I1 ( mult_x_2_n36 ) , .I2 ( n355 ) , .O ( n817 ) ) ;
OAI22X1TAS7 U899 ( .A1 ( n818 ) , .A2 ( n817 ) , .B1 ( mult_x_2_n37 ) , 
    .B2 ( n816 ) , .O ( n820 ) ) ;
XOR3X1TAS7 U900 ( .I1 ( n819 ) , .I2 ( n821 ) , .I3 ( n820 ) , 
    .O ( mult_x_2_n168 ) ) ;
NAND2X1TAS7 U901 ( .I1 ( n819 ) , .I2 ( n821 ) , .O ( n824 ) ) ;
NAND2X1TAS7 U902 ( .I1 ( n819 ) , .I2 ( n820 ) , .O ( n823 ) ) ;
NAND2X1TAS7 U903 ( .I1 ( n821 ) , .I2 ( n820 ) , .O ( n822 ) ) ;
NAND3X1TAS7 U904 ( .I1 ( n824 ) , .I2 ( n823 ) , .I3 ( n822 ) , 
    .O ( mult_x_2_n167 ) ) ;
NAND2X1TAS7 U905 ( .I1 ( mult_x_2_n173 ) , .I2 ( mult_x_2_n164 ) , 
    .O ( n1018 ) ) ;
CLKINVX1TAS7 U906 ( .I ( a_in[5] ) , .O ( n1022 ) ) ;
XNOR2X1TAS7 U907 ( .I1 ( a_in[10] ) , .I2 ( a_in[9] ) , .O ( n1026 ) ) ;
XOR2X1TAS7 U908 ( .I1 ( a_in[2] ) , .I2 ( a_in[3] ) , .O ( n1073 ) ) ;
CLKINVX1TAS7 U909 ( .I ( a_in[1] ) , .O ( n1028 ) ) ;
XNOR2X1TAS7 U910 ( .I1 ( a_in[6] ) , .I2 ( a_in[5] ) , .O ( n1031 ) ) ;
NOR2B1X1TAS7 U911 ( .B2 ( b_in[0] ) , .I1 ( n1031 ) , .O ( n1046 ) ) ;
XNOR2X1TAS7 U912 ( .I1 ( b_in[2] ) , .I2 ( a_in[5] ) , .O ( n1034 ) ) ;
XOR2X1TAS7 U913 ( .I1 ( b_in[1] ) , .I2 ( a_in[5] ) , .O ( n1032 ) ) ;
CLKINVX1TAS7 U914 ( .I ( a_in[3] ) , .O ( n1021 ) ) ;
XOR2X1TAS7 U915 ( .I1 ( a_in[4] ) , .I2 ( n1021 ) , .O ( n1033 ) ) ;
XOR2X1TAS7 U916 ( .I1 ( a_in[10] ) , .I2 ( a_in[11] ) , .O ( n1036 ) ) ;
XNOR2X1TAS7 U917 ( .I1 ( a_in[4] ) , .I2 ( n1022 ) , .O ( n825 ) ) ;
NAND2X1TAS7 U918 ( .I1 ( n825 ) , .I2 ( n1033 ) , .O ( n1045 ) ) ;
NAND2X1TAS7 U919 ( .I1 ( n827 ) , .I2 ( n826 ) , .O ( n830 ) ) ;
NAND2X1TAS7 U920 ( .I1 ( n826 ) , .I2 ( mult_x_2_n168 ) , .O ( n829 ) ) ;
NAND2X1TAS7 U921 ( .I1 ( n827 ) , .I2 ( mult_x_2_n168 ) , .O ( n828 ) ) ;
NAND3X1TAS7 U922 ( .I1 ( n830 ) , .I2 ( n829 ) , .I3 ( n828 ) , 
    .O ( mult_x_2_n161 ) ) ;
XNOR2X1TAS7 U923 ( .I1 ( a_in[2] ) , .I2 ( a_in[1] ) , .O ( n1027 ) ) ;
XNOR2X1TAS7 U924 ( .I1 ( a_in[8] ) , .I2 ( a_in[7] ) , .O ( n1029 ) ) ;
XOR2X1TAS7 U925 ( .I1 ( n832 ) , .I2 ( n831 ) , .O ( n833 ) ) ;
XOR2X1TAS7 U926 ( .I1 ( n834 ) , .I2 ( n833 ) , .O ( mult_x_2_n186 ) ) ;
BUFX1TAS7 U927 ( .I ( rst_n ) , .O ( n1078 ) ) ;
BUFX1TAS7 U928 ( .I ( rst_n ) , .O ( n1077 ) ) ;
BUFX1TAS7 U929 ( .I ( rst_n ) , .O ( n1076 ) ) ;
INVX4TAS7 U930 ( .I ( n228 ) , .O ( n1107 ) ) ;
CLKINVX1TAS7 U931 ( .I ( a_reg[5] ) , .O ( n836 ) ) ;
NAND2X1TAS7 U932 ( .I1 ( n837 ) , .I2 ( n836 ) , .O ( n844 ) ) ;
NAND2X1TAS7 U933 ( .I1 ( n847 ) , .I2 ( n844 ) , .O ( n840 ) ) ;
CLKINVX1TAS7 U934 ( .I ( n838 ) , .O ( n846 ) ) ;
AOI12X1TAS7 U935 ( .B1 ( n873 ) , .B2 ( n843 ) , .A1 ( n846 ) , .O ( n839 ) ) ;
XOR2X1TAS7 U936 ( .I1 ( n840 ) , .I2 ( n839 ) , .O ( intadd_0_SUM_1_ ) ) ;
NAND2X1TAS7 U937 ( .I1 ( n842 ) , .I2 ( n841 ) , .O ( n853 ) ) ;
NAND2X1TAS7 U938 ( .I1 ( n862 ) , .I2 ( n853 ) , .O ( n849 ) ) ;
NAND2X1TAS7 U939 ( .I1 ( n847 ) , .I2 ( n843 ) , .O ( n863 ) ) ;
CLKINVX1TAS7 U940 ( .I ( n863 ) , .O ( n852 ) ) ;
CLKINVX1TAS7 U941 ( .I ( n844 ) , .O ( n845 ) ) ;
AOI12X1TAS7 U942 ( .B1 ( n847 ) , .B2 ( n846 ) , .A1 ( n845 ) , .O ( n870 ) ) ;
CLKINVX1TAS7 U943 ( .I ( n870 ) , .O ( n854 ) ) ;
AOI12X1TAS7 U944 ( .B1 ( n873 ) , .B2 ( n852 ) , .A1 ( n854 ) , .O ( n848 ) ) ;
XOR2X1TAS7 U945 ( .I1 ( n849 ) , .I2 ( n848 ) , .O ( intadd_0_SUM_2_ ) ) ;
XNOR2X1TAS7 U946 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[7] ) , .O ( n851 ) ) ;
CLKINVX1TAS7 U947 ( .I ( a_reg[7] ) , .O ( n850 ) ) ;
OR2X1TAS7 U948 ( .I1 ( n851 ) , .I2 ( n850 ) , .O ( n867 ) ) ;
NAND2X1TAS7 U949 ( .I1 ( n851 ) , .I2 ( n850 ) , .O ( n864 ) ) ;
NAND2X1TAS7 U950 ( .I1 ( n867 ) , .I2 ( n864 ) , .O ( n859 ) ) ;
CLKINVX1TAS7 U951 ( .I ( n873 ) , .O ( n857 ) ) ;
NAND2X1TAS7 U952 ( .I1 ( n852 ) , .I2 ( n862 ) , .O ( n856 ) ) ;
CLKINVX1TAS7 U953 ( .I ( n853 ) , .O ( n866 ) ) ;
AOI12X1TAS7 U954 ( .B1 ( n854 ) , .B2 ( n862 ) , .A1 ( n866 ) , .O ( n855 ) ) ;
OAI12X1TAS7 U955 ( .B1 ( n857 ) , .B2 ( n856 ) , .A1 ( n855 ) , .O ( n858 ) ) ;
XNOR2X1TAS7 U956 ( .I1 ( n859 ) , .I2 ( n858 ) , .O ( intadd_0_SUM_3_ ) ) ;
CLKINVX1TAS7 U957 ( .I ( a_reg[9] ) , .O ( n860 ) ) ;
OR2X1TAS7 U958 ( .I1 ( n861 ) , .I2 ( n860 ) , .O ( n884 ) ) ;
NAND2X1TAS7 U959 ( .I1 ( n861 ) , .I2 ( n860 ) , .O ( n881 ) ) ;
NAND2X1TAS7 U960 ( .I1 ( n884 ) , .I2 ( n881 ) , .O ( n877 ) ) ;
NAND2X1TAS7 U961 ( .I1 ( n862 ) , .I2 ( n867 ) , .O ( n869 ) ) ;
NOR2X1TAS7 U962 ( .I1 ( n869 ) , .I2 ( n863 ) , .O ( n872 ) ) ;
CLKINVX1TAS7 U963 ( .I ( n864 ) , .O ( n865 ) ) ;
AOI12X1TAS7 U964 ( .B1 ( n867 ) , .B2 ( n866 ) , .A1 ( n865 ) , .O ( n868 ) ) ;
AOI12X4TAS7 U965 ( .B1 ( n873 ) , .B2 ( n322 ) , .A1 ( n871 ) , .O ( n998 ) ) ;
CLKINVX1TAS7 U966 ( .I ( a_reg[8] ) , .O ( n874 ) ) ;
NOR2X1TAS7 U967 ( .I1 ( n875 ) , .I2 ( n874 ) , .O ( n880 ) ) ;
NAND2X1TAS7 U968 ( .I1 ( n875 ) , .I2 ( n874 ) , .O ( n911 ) ) ;
OAI12X1TAS7 U969 ( .B1 ( n998 ) , .B2 ( n880 ) , .A1 ( n911 ) , .O ( n876 ) ) ;
XNOR2X1TAS7 U970 ( .I1 ( n877 ) , .I2 ( n876 ) , .O ( intadd_0_SUM_5_ ) ) ;
CLKINVX1TAS7 U971 ( .I ( a_reg[10] ) , .O ( n878 ) ) ;
OR2X2TAS7 U972 ( .I1 ( n879 ) , .I2 ( n878 ) , .O ( n994 ) ) ;
NAND2X1TAS7 U973 ( .I1 ( n879 ) , .I2 ( n878 ) , .O ( n889 ) ) ;
NAND2X1TAS7 U974 ( .I1 ( n994 ) , .I2 ( n889 ) , .O ( n886 ) ) ;
CLKINVX1TAS7 U975 ( .I ( n880 ) , .O ( n912 ) ) ;
NAND2X1TAS7 U976 ( .I1 ( n912 ) , .I2 ( n884 ) , .O ( n990 ) ) ;
CLKINVX1TAS7 U977 ( .I ( n911 ) , .O ( n883 ) ) ;
CLKINVX1TAS7 U978 ( .I ( n881 ) , .O ( n882 ) ) ;
OAI12X1TAS7 U979 ( .B1 ( n998 ) , .B2 ( n990 ) , .A1 ( n992 ) , .O ( n885 ) ) ;
XNOR2X1TAS7 U980 ( .I1 ( n886 ) , .I2 ( n885 ) , .O ( intadd_0_SUM_6_ ) ) ;
CLKINVX1TAS7 U981 ( .I ( a_reg[13] ) , .O ( n887 ) ) ;
OR2X1TAS7 U982 ( .I1 ( n888 ) , .I2 ( n887 ) , .O ( n925 ) ) ;
NAND2X1TAS7 U983 ( .I1 ( n888 ) , .I2 ( n887 ) , .O ( n922 ) ) ;
NAND2X1TAS7 U984 ( .I1 ( n925 ) , .I2 ( n922 ) , .O ( n900 ) ) ;
CLKINVX1TAS7 U985 ( .I ( a_reg[11] ) , .O ( n890 ) ) ;
OR2X1TAS7 U986 ( .I1 ( n891 ) , .I2 ( n890 ) , .O ( n989 ) ) ;
NAND2X1TAS7 U987 ( .I1 ( n994 ) , .I2 ( n989 ) , .O ( n894 ) ) ;
XNOR2X1TAS7 U988 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[12] ) , .O ( n896 ) ) ;
CLKINVX1TAS7 U989 ( .I ( a_reg[12] ) , .O ( n895 ) ) ;
OR2X1TAS7 U990 ( .I1 ( n896 ) , .I2 ( n895 ) , .O ( n979 ) ) ;
NAND2X1TAS7 U991 ( .I1 ( n980 ) , .I2 ( n979 ) , .O ( n898 ) ) ;
CLKINVX1TAS7 U992 ( .I ( n889 ) , .O ( n993 ) ) ;
NAND2X1TAS7 U993 ( .I1 ( n891 ) , .I2 ( n890 ) , .O ( n988 ) ) ;
CLKINVX1TAS7 U994 ( .I ( n988 ) , .O ( n892 ) ) ;
AOI12X1TAS7 U995 ( .B1 ( n989 ) , .B2 ( n993 ) , .A1 ( n892 ) , .O ( n893 ) ) ;
OAI12X1TAS7 U996 ( .B1 ( n992 ) , .B2 ( n894 ) , .A1 ( n893 ) , .O ( n981 ) ) ;
NAND2X1TAS7 U997 ( .I1 ( n896 ) , .I2 ( n895 ) , .O ( n978 ) ) ;
CLKINVX1TAS7 U998 ( .I ( n978 ) , .O ( n924 ) ) ;
AOI12X1TAS7 U999 ( .B1 ( n981 ) , .B2 ( n979 ) , .A1 ( n924 ) , .O ( n897 ) ) ;
OAI12X1TAS7 U1000 ( .B1 ( n998 ) , .B2 ( n898 ) , .A1 ( n897 ) , .O ( n899 ) ) ;
XNOR2X1TAS7 U1001 ( .I1 ( n900 ) , .I2 ( n899 ) , .O ( intadd_0_SUM_9_ ) ) ;
XNOR3X1TAS7 U1002 ( .I1 ( n901 ) , .I2 ( n902 ) , .I3 ( a_reg[2] ) , 
    .O ( n910 ) ) ;
NAND2X1TAS7 U1003 ( .I1 ( n904 ) , .I2 ( n903 ) , .O ( n905 ) ) ;
XNOR2X1TAS7 U1004 ( .I1 ( n906 ) , .I2 ( n905 ) , .O ( n907 ) ) ;
NAND2B1X1TAS7 U1005 ( .B2 ( n1119 ) , .I1 ( n907 ) , .O ( n909 ) ) ;
AOI22X1TAS7 U1006 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[2] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[2] ) , .O ( n908 ) ) ;
OAI112X1TAS7 U1007 ( .C1 ( n1121 ) , .C2 ( n910 ) , .A1 ( n909 ) , 
    .B1 ( n908 ) , .O ( n223 ) ) ;
NAND2X1TAS7 U1008 ( .I1 ( n912 ) , .I2 ( n911 ) , .O ( n913 ) ) ;
XOR2X1TAS7 U1009 ( .I1 ( n913 ) , .I2 ( n375 ) , .O ( intadd_0_SUM_4_ ) ) ;
NOR2X1TAS7 U1010 ( .I1 ( a_reg[0] ) , .I2 ( n1109 ) , .O ( n1 ) ) ;
CLKINVX1TAS7 U1011 ( .I ( n1082 ) , .O ( flags_out[0] ) ) ;
NOR2X1TAS7 U1012 ( .I1 ( b_reg[1] ) , .I2 ( a_reg[1] ) , .O ( n3 ) ) ;
NOR2X1TAS7 U1013 ( .I1 ( a_reg[12] ) , .I2 ( b_reg[12] ) , .O ( n25 ) ) ;
NAND2X1TAS7 U1014 ( .I1 ( a_reg[12] ) , .I2 ( b_reg[12] ) , .O ( n57 ) ) ;
NOR2X1TAS7 U1015 ( .I1 ( n301 ) , .I2 ( a_reg[13] ) , .O ( n27 ) ) ;
NAND2X1TAS7 U1016 ( .I1 ( n301 ) , .I2 ( a_reg[13] ) , .O ( n59 ) ) ;
NOR2X1TAS7 U1017 ( .I1 ( a_reg[14] ) , .I2 ( b_reg[14] ) , .O ( n29 ) ) ;
NAND2X1TAS7 U1018 ( .I1 ( a_reg[14] ) , .I2 ( b_reg[14] ) , .O ( n61 ) ) ;
NOR2X1TAS7 U1019 ( .I1 ( b_reg[15] ) , .I2 ( a_reg[15] ) , .O ( n31 ) ) ;
NAND2X1TAS7 U1020 ( .I1 ( a_reg[15] ) , .I2 ( b_reg[15] ) , .O ( n63 ) ) ;
NOR2X1TAS7 U1021 ( .I1 ( a_reg[2] ) , .I2 ( b_reg[2] ) , .O ( n5 ) ) ;
NAND2X1TAS7 U1022 ( .I1 ( a_reg[2] ) , .I2 ( b_reg[2] ) , .O ( n37 ) ) ;
NAND2X1TAS7 U1023 ( .I1 ( a_reg[6] ) , .I2 ( b_reg[6] ) , .O ( n45 ) ) ;
NOR2X1TAS7 U1024 ( .I1 ( a_reg[6] ) , .I2 ( b_reg[6] ) , .O ( n13 ) ) ;
CLKINVX1TAS7 U1025 ( .I ( n312 ) , .O ( n914 ) ) ;
NAND2X1TAS7 U1026 ( .I1 ( n915 ) , .I2 ( n914 ) , .O ( result_out[11] ) ) ;
OAI112X1TAS7 U1027 ( .C1 ( n1088 ) , .C2 ( n1087 ) , .A1 ( n313 ) , 
    .B1 ( n1086 ) , .O ( n916 ) ) ;
CLKINVX1TAS7 U1028 ( .I ( n916 ) , .O ( n917 ) ) ;
NAND2X1TAS7 U1029 ( .I1 ( n918 ) , .I2 ( n917 ) , .O ( result_out[15] ) ) ;
NOR2X1TAS7 U1030 ( .I1 ( b_reg[11] ) , .I2 ( a_reg[11] ) , .O ( n23 ) ) ;
NAND2X1TAS7 U1031 ( .I1 ( b_reg[11] ) , .I2 ( a_reg[11] ) , .O ( n55 ) ) ;
NOR2B1X1TAS7 U1032 ( .B2 ( n919 ) , .I1 ( n329 ) , .O ( n9 ) ) ;
NAND2X1TAS7 U1033 ( .I1 ( a_reg[4] ) , .I2 ( n329 ) , .O ( n41 ) ) ;
NAND2X1TAS7 U1034 ( .I1 ( b_reg[9] ) , .I2 ( a_reg[9] ) , .O ( n51 ) ) ;
NOR2X1TAS7 U1035 ( .I1 ( b_reg[9] ) , .I2 ( a_reg[9] ) , .O ( n19 ) ) ;
NAND2X1TAS7 U1036 ( .I1 ( b_reg[7] ) , .I2 ( a_reg[7] ) , .O ( n47 ) ) ;
NOR2X1TAS7 U1037 ( .I1 ( b_reg[7] ) , .I2 ( a_reg[7] ) , .O ( n15 ) ) ;
NAND2X1TAS7 U1038 ( .I1 ( b_reg[5] ) , .I2 ( a_reg[5] ) , .O ( n43 ) ) ;
NOR2X1TAS7 U1039 ( .I1 ( b_reg[5] ) , .I2 ( a_reg[5] ) , .O ( n11 ) ) ;
NAND2X1TAS7 U1040 ( .I1 ( a_reg[10] ) , .I2 ( n335 ) , .O ( n53 ) ) ;
NOR2X1TAS7 U1041 ( .I1 ( a_reg[10] ) , .I2 ( n335 ) , .O ( n21 ) ) ;
NAND2X1TAS7 U1042 ( .I1 ( a_reg[8] ) , .I2 ( n319 ) , .O ( n49 ) ) ;
NOR2X1TAS7 U1043 ( .I1 ( a_reg[8] ) , .I2 ( n319 ) , .O ( n17 ) ) ;
CLKINVX1TAS7 U1044 ( .I ( n311 ) , .O ( n920 ) ) ;
NAND2X1TAS7 U1045 ( .I1 ( n921 ) , .I2 ( n920 ) , .O ( result_out[12] ) ) ;
NAND2X1TAS7 U1046 ( .I1 ( b_reg[3] ) , .I2 ( a_reg[3] ) , .O ( n39 ) ) ;
NOR2X1TAS7 U1047 ( .I1 ( b_reg[3] ) , .I2 ( a_reg[3] ) , .O ( n7 ) ) ;
NAND2X1TAS7 U1048 ( .I1 ( b_reg[1] ) , .I2 ( a_reg[1] ) , .O ( n35 ) ) ;
NAND2B1X1TAS7 U1049 ( .B2 ( b_in[0] ) , .I1 ( alu_ctrl_in[0] ) , 
    .O ( n1081 ) ) ;
XNOR2X1TAS7 U1050 ( .I1 ( alu_ctrl_in[0] ) , .I2 ( b_in[1] ) , .O ( n1094 ) ) ;
NAND2X1TAS7 U1051 ( .I1 ( n979 ) , .I2 ( n925 ) , .O ( n966 ) ) ;
XNOR2X1TAS7 U1052 ( .I1 ( alu_ctrl_reg[0] ) , .I2 ( b_reg[14] ) , 
    .O ( n927 ) ) ;
CLKINVX1TAS7 U1053 ( .I ( a_reg[14] ) , .O ( n926 ) ) ;
NOR2X1TAS7 U1054 ( .I1 ( n927 ) , .I2 ( n926 ) , .O ( n963 ) ) ;
NOR2X1TAS7 U1055 ( .I1 ( n966 ) , .I2 ( n963 ) , .O ( n929 ) ) ;
NAND2X1TAS7 U1056 ( .I1 ( n980 ) , .I2 ( n929 ) , .O ( n931 ) ) ;
CLKINVX1TAS7 U1057 ( .I ( n922 ) , .O ( n923 ) ) ;
AOI12X1TAS7 U1058 ( .B1 ( n925 ) , .B2 ( n924 ) , .A1 ( n923 ) , .O ( n967 ) ) ;
NAND2X1TAS7 U1059 ( .I1 ( n927 ) , .I2 ( n926 ) , .O ( n964 ) ) ;
OAI12X1TAS7 U1060 ( .B1 ( n967 ) , .B2 ( n963 ) , .A1 ( n964 ) , .O ( n928 ) ) ;
AOI12X1TAS7 U1061 ( .B1 ( n981 ) , .B2 ( n929 ) , .A1 ( n928 ) , .O ( n930 ) ) ;
XNOR2X1TAS7 U1062 ( .I1 ( n1005 ) , .I2 ( n934 ) , .O ( n933 ) ) ;
CLKINVX2TAS7 U1063 ( .I ( n1121 ) , .O ( n1006 ) ) ;
CLKINVX1TAS7 U1064 ( .I ( a_reg[15] ) , .O ( n932 ) ) ;
XOR2X1TAS7 U1065 ( .I1 ( n932 ) , .I2 ( n934 ) , .O ( n1004 ) ) ;
NAND3X1TAS7 U1066 ( .I1 ( n933 ) , .I2 ( n1006 ) , .I3 ( n1004 ) , 
    .O ( n1111 ) ) ;
OR2X1TAS7 U1067 ( .I1 ( n1005 ) , .I2 ( n1004 ) , .O ( n936 ) ) ;
NAND2X1TAS7 U1068 ( .I1 ( n934 ) , .I2 ( a_reg[15] ) , .O ( n935 ) ) ;
AOI12X1TAS7 U1069 ( .B1 ( n936 ) , .B2 ( n935 ) , .A1 ( n1121 ) , 
    .O ( alu_flags_1_ ) ) ;
AOI22X1TAS7 U1070 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[13] ) , 
    .B1 ( n1001 ) , .B2 ( my_alu_or_bus[13] ) , .O ( n1112 ) ) ;
NAND2X1TAS7 U1071 ( .I1 ( n1006 ) , .I2 ( n33 ) , .O ( n941 ) ) ;
AOI22X1TAS7 U1072 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[0] ) , .B1 ( n1108 ) , 
    .B2 ( my_alu_or_bus[0] ) , .O ( n940 ) ) ;
NOR2B1X1TAS7 U1073 ( .B2 ( mult_x_2_n43 ) , .I1 ( n937 ) , .O ( n938 ) ) ;
NAND2X1TAS7 U1074 ( .I1 ( n938 ) , .I2 ( n1124 ) , .O ( n939 ) ) ;
OAI112X1TAS7 U1075 ( .C1 ( n1 ) , .C2 ( n941 ) , .A1 ( n940 ) , .B1 ( n939 ) , 
    .O ( n225 ) ) ;
XOR3X1TAS7 U1076 ( .I1 ( n942 ) , .I2 ( a_reg[1] ) , .I3 ( n1113 ) , 
    .O ( n952 ) ) ;
NOR2X1TAS7 U1077 ( .I1 ( n944 ) , .I2 ( n943 ) , .O ( n945 ) ) ;
CLKINVX1TAS7 U1078 ( .I ( n945 ) , .O ( n947 ) ) ;
NAND2X1TAS7 U1079 ( .I1 ( n947 ) , .I2 ( n946 ) , .O ( n948 ) ) ;
CLKINVX1TAS7 U1080 ( .I ( n948 ) , .O ( n949 ) ) ;
NAND2X1TAS7 U1081 ( .I1 ( n949 ) , .I2 ( n1124 ) , .O ( n951 ) ) ;
AOI22X1TAS7 U1082 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[1] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[1] ) , .O ( n950 ) ) ;
OAI112X1TAS7 U1083 ( .C1 ( n952 ) , .C2 ( n1121 ) , .A1 ( n951 ) , 
    .B1 ( n950 ) , .O ( n224 ) ) ;
XNOR2X1TAS7 U1084 ( .I1 ( n953 ) , .I2 ( n954 ) , .O ( n961 ) ) ;
CLKINVX1TAS7 U1085 ( .I ( n955 ) , .O ( n957 ) ) ;
AOI22X1TAS7 U1086 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[3] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[3] ) , .O ( n959 ) ) ;
OAI112X2TAS7 U1087 ( .C1 ( n1121 ) , .C2 ( n961 ) , .A1 ( n960 ) , 
    .B1 ( n959 ) , .O ( n222 ) ) ;
AOI22X1TAS7 U1088 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[5] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[5] ) , .O ( n1114 ) ) ;
AOI22X1TAS7 U1089 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[6] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[6] ) , .O ( n1115 ) ) ;
AOI22X1TAS7 U1090 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[7] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[7] ) , .O ( n1116 ) ) ;
AOI22X1TAS7 U1091 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[8] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[8] ) , .O ( n1117 ) ) ;
AOI22X1TAS7 U1092 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[9] ) , .B1 ( n1001 ) , 
    .B2 ( my_alu_or_bus[9] ) , .O ( n1118 ) ) ;
AOI22X1TAS7 U1093 ( .A1 ( n962 ) , .A2 ( my_alu_and_bus[10] ) , 
    .B1 ( n1001 ) , .B2 ( my_alu_or_bus[10] ) , .O ( n1120 ) ) ;
CLKINVX1TAS7 U1094 ( .I ( n963 ) , .O ( n965 ) ) ;
NAND2X1TAS7 U1095 ( .I1 ( n965 ) , .I2 ( n964 ) , .O ( n973 ) ) ;
CLKINVX1TAS7 U1096 ( .I ( n966 ) , .O ( n969 ) ) ;
NAND2X1TAS7 U1097 ( .I1 ( n980 ) , .I2 ( n969 ) , .O ( n971 ) ) ;
CLKINVX1TAS7 U1098 ( .I ( n967 ) , .O ( n968 ) ) ;
AOI12X1TAS7 U1099 ( .B1 ( n981 ) , .B2 ( n969 ) , .A1 ( n968 ) , .O ( n970 ) ) ;
NAND2X1TAS7 U1100 ( .I1 ( n974 ) , .I2 ( n1006 ) , .O ( n1130 ) ) ;
NAND2X1TAS7 U1101 ( .I1 ( n1108 ) , .I2 ( my_alu_or_bus[15] ) , .O ( n1125 ) ) ;
CLKINVX1TAS7 U1102 ( .I ( n225 ) , .O ( n976 ) ) ;
OAI12X1TAS7 U1103 ( .B1 ( my_alu_and_bus[14] ) , .B2 ( my_alu_and_bus[15] ) , 
    .A1 ( n1107 ) , .O ( n975 ) ) ;
NAND2X1TAS7 U1104 ( .I1 ( n1108 ) , .I2 ( my_alu_or_bus[14] ) , .O ( n1008 ) ) ;
NAND4X1TAS7 U1105 ( .I1 ( n976 ) , .I2 ( n975 ) , .I3 ( n1125 ) , 
    .I4 ( n1008 ) , .O ( n977 ) ) ;
NOR2X1TAS7 U1106 ( .I1 ( n224 ) , .I2 ( n977 ) , .O ( n1122 ) ) ;
NAND2X1TAS7 U1107 ( .I1 ( n979 ) , .I2 ( n978 ) , .O ( n985 ) ) ;
CLKINVX1TAS7 U1108 ( .I ( n980 ) , .O ( n983 ) ) ;
CLKINVX1TAS7 U1109 ( .I ( n981 ) , .O ( n982 ) ) ;
AOI22X1TAS7 U1110 ( .A1 ( n1107 ) , .A2 ( my_alu_and_bus[12] ) , 
    .B1 ( n1001 ) , .B2 ( my_alu_or_bus[12] ) , .O ( n986 ) ) ;
NAND2X1TAS7 U1111 ( .I1 ( n987 ) , .I2 ( n986 ) , .O ( n1129 ) ) ;
NAND2X1TAS7 U1112 ( .I1 ( n989 ) , .I2 ( n988 ) , .O ( n1000 ) ) ;
CLKINVX1TAS7 U1113 ( .I ( n990 ) , .O ( n991 ) ) ;
NAND2X1TAS7 U1114 ( .I1 ( n991 ) , .I2 ( n994 ) , .O ( n997 ) ) ;
CLKINVX1TAS7 U1115 ( .I ( n992 ) , .O ( n995 ) ) ;
AOI12X1TAS7 U1116 ( .B1 ( n995 ) , .B2 ( n994 ) , .A1 ( n993 ) , .O ( n996 ) ) ;
AOI22X1TAS7 U1117 ( .A1 ( n1107 ) , .A2 ( my_alu_and_bus[11] ) , 
    .B1 ( n1001 ) , .B2 ( my_alu_or_bus[11] ) , .O ( n1002 ) ) ;
NAND2X1TAS7 U1118 ( .I1 ( n1003 ) , .I2 ( n1002 ) , .O ( n1128 ) ) ;
XOR2X1TAS7 U1119 ( .I1 ( n1005 ) , .I2 ( n1004 ) , .O ( n1007 ) ) ;
NAND2X1TAS7 U1120 ( .I1 ( n1007 ) , .I2 ( n1006 ) , .O ( n1126 ) ) ;
CLKINVX1TAS7 U1121 ( .I ( my_alu_and_bus[15] ) , .O ( n1127 ) ) ;
CLKINVX1TAS7 U1122 ( .I ( my_alu_and_bus[14] ) , .O ( n1009 ) ) ;
OAI112X1TAS7 U1123 ( .C1 ( n228 ) , .C2 ( n1009 ) , .A1 ( n1130 ) , 
    .B1 ( n1008 ) , .O ( n1131 ) ) ;
endmodule


