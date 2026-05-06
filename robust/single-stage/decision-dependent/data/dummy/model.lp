\ Model idol-model
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x17c31d90224e2aec
Minimize
  - 20 x_0 - 35 x_1 - 15 x_2 - 40 x_3 - 25 x_4 - 18 x_5 - 45 x_6 - 30 x_7
   - 50 x_8 - 12 x_9 - 48 x_10 - 42 x_11 - 17 x_12 - 33 x_13 - 27 x_14
Subject To
 c_30: 4 x_0 + 7 x_1 + 2 x_2 + 9 x_3 + 5 x_4 + 3 x_5 + 8 x_6 + 6 x_7
   + 10 x_8 + x_9 + 12 x_10 + 11 x_11 + 3 x_12 + 7 x_13 + 5 x_14 <= 50
 c_31: y_0 + y_1 + y_2 + y_3 + y_4 + y_5 + y_6 + y_7 + y_8 + y_9 + y_10
   + y_11 + y_12 + y_13 + y_14 <= 2
Bounds
Binaries
 x_0 x_1 x_2 x_3 x_4 x_5 x_6 x_7 x_8 x_9 x_10 x_11 x_12 x_13 x_14 y_0 y_1
 y_2 y_3 y_4 y_5 y_6 y_7 y_8 y_9 y_10 y_11 y_12 y_13 y_14
End
