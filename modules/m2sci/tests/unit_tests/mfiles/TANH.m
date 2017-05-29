% Test file for function tanh()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = tanh([]);
% TEST 2
res2 = tanh(m2sciUnknownType([]));
% TEST 3
res3 = tanh(m2sciUnknownDims([]));
% TEST 4
res4 = tanh([1]);
% TEST 5
res5 = tanh([1,2,3]);
% TEST 6
res6 = tanh([1;2;3]);
% TEST 7
res7 = tanh([1,2,3;4,5,6]);
% TEST 8
res8 = tanh(m2sciUnknownType([1]));
% TEST 9
res9 = tanh(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = tanh(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = tanh(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = tanh(m2sciUnknownDims([1]));
% TEST 13
res13 = tanh(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = tanh(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = tanh(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = tanh([i]);
% TEST 17
res17 = tanh([i,2i,3i]);
% TEST 18
res18 = tanh([i;2i;3i]);
% TEST 19
res19 = tanh([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = tanh(m2sciUnknownType([i]));
% TEST 21
res21 = tanh(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = tanh(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = tanh(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = tanh(m2sciUnknownDims([i]));
% TEST 25
res25 = tanh(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = tanh(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = tanh(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
