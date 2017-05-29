% Test file for function coth()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = coth([]);
% TEST 2
res2 = coth(m2sciUnknownType([]));
% TEST 3
res3 = coth(m2sciUnknownDims([]));
% TEST 4
res4 = coth([1]);
% TEST 5
res5 = coth([1,2,3]);
% TEST 6
res6 = coth([1;2;3]);
% TEST 7
res7 = coth([1,2,3;4,5,6]);
% TEST 8
res8 = coth(m2sciUnknownType([1]));
% TEST 9
res9 = coth(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = coth(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = coth(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = coth(m2sciUnknownDims([1]));
% TEST 13
res13 = coth(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = coth(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = coth(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = coth([i]);
% TEST 17
res17 = coth([i,2i,3i]);
% TEST 18
res18 = coth([i;2i;3i]);
% TEST 19
res19 = coth([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = coth(m2sciUnknownType([i]));
% TEST 21
res21 = coth(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = coth(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = coth(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = coth(m2sciUnknownDims([i]));
% TEST 25
res25 = coth(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = coth(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = coth(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
