// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte Hecquet
// Copyright (C) 2013 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

//Generate the process
t1=0:0.1:100;
y1=sin(2*%pi*t1)+sin(2*%pi*2*t1);

//Covariance of y1
nlag=128;
c1=corr(y1,nlag);
c1=c1';

//Compute the filter with maximum order=15 and p=5
n=5; p=2;
[la1,sig1]=lattp(n,p,c1);
poly(0,"z");
assert_checkequal(la1(1),  1-1.83287468880270521*%z+2.08814963103010243*%z^2-1.02130636786998474*%z^3+0.09534323012550860*%z^4+0.39938577578836609*%z^5);

assert_checkequal(la1(2), 1+5934927594313.27051*%z-10877978567494.7891*%z^2+12393016866258.4355*%z^3-6061379344921.20703*%z^4+565855167403.415283*%z^5+2370325661503.31836*%z^6);

assert_checkequal(sig1, list());

