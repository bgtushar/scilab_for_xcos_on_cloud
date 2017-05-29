// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - INRIA - Michael Baudin
// Copyright (C) 2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->

// Run with test_run('statistics','cdfpoi',['no_check_error_output']);

//
// Assessing the quality of the Normal distribution function
// References
//   Yalta, A. T. 2008. The accuracy of statistical distributions in Microsoft®Excel 2007. Comput. Stat. Data Anal. 52, 10 (Jun. 2008), 4579-4586. DOI= http://dx.doi.org/10.1016/j.csda.2008.03.005 
//   Computation of Statistical Distributions (ELV), Leo Knüsel
// Table 4
// Check Poisson distribution with parameters (lambda, k, Sigma)
// If Sigma = 1, the cumulated distribution function is to be computed.
//
// table = [x lambda p precision]
//

table = [
  1e+03 , 1e+03 , 0.508409 , 1.e-5
  1e+05 , 1e+05 , 0.500841 , 1.e-5
  1e+07 , 1e+07 , 0.500084 , 1.e-5
  1e+09 , 1e+09 , 0.500008 , 1.e-5
];

nt = size(table,"r");
for k = 1 : nt
  Xk = table(k,1);
  lambda = table(k,2);
  expected = table(k,3);
  precision = table(k,4);
  [computed,Q]=cdfpoi("PQ",Xk,lambda);
  assert_checkalmostequal ( computed , expected , precision );
end

//
// Values from R-2.8.1
// table = [x lambda PDF-P CDF-P CDF-Q]
// Some tests do not pass with Scilab.
//
//
// Prints the number of accurate digits.

table = [
1.000000000000000000D+03 1.000000000000000000D+03 1.261461134872150086D-02 5.084093671685060434D-01 4.915906328314940121D-01
1.000000000000000000D+05 1.000000000000000000D+05 1.261565209705300949D-03 5.008410430993400775D-01 4.991589569006599225D-01
1.000000000000000000D+07 1.000000000000000000D+07 1.261566250497027949D-04 5.000841044163260030D-01 4.999158955836739970D-01
1.000000000000000000D+09 1.000000000000000000D+09 1.261566260904949930D-05 5.000084104417390485D-01 4.999915895582610070D-01
//0.000000000000000000D+00 2.000000000000000000D+02 1.383896526736738008D-87 1.383896526736738008D-87 1.000000000000000000D+00
5.000000000000000000D+01 2.000000000000000000D+02 5.123049239702292812D-37 6.815847235588002180D-37 1.000000000000000000D+00
8.000000000000000000D+01 2.000000000000000000D+02 2.337628804093846817D-22 3.875088395176848769D-22 1.000000000000000000D+00
1.030000000000000000D+02 2.000000000000000000D+02 1.417198708132908064D-14 2.891647405032629846D-14 9.999999999999711342D-01
1.040000000000000000D+02 2.000000000000000000D+02 2.725382131024812095D-14 5.617029536057430897D-14 9.999999999999438227D-01
1.330000000000000000D+02 2.000000000000000000D+02 1.013218285038530591D-07 2.943900186784097476D-07 9.999997056099813042D-01
1.340000000000000000D+02 2.000000000000000000D+02 1.512266097072429104D-07 4.456166283856515992D-07 9.999995543833716249D-01
2.000000000000000000D+02 2.000000000000000000D+02 2.819772768592081896D-02 5.187943096786845620D-01 4.812056903213154380D-01
2.500000000000000000D+02 2.000000000000000000D+02 7.744905800132999957D-05 9.997153785997120456D-01 2.846214002883620114D-04
2.800000000000000000D+02 2.000000000000000000D+02 1.602914502548084948D-08 9.999999615206405235D-01 3.847935945037056327D-08
3.140000000000000000D+02 2.000000000000000000D+02 2.235682172206060878D-14 9.999999999999616973D-01 3.832269096110103145D-14
3.150000000000000000D+02 2.000000000000000000D+02 1.419480744257838997D-14 9.999999999999759082D-01 2.412788351852324890D-14
4.000000000000000000D+02 2.000000000000000000D+02 5.580687539454764804D-36 1.000000000000000000D+00 5.525962083726706326D-36
6.000000000000000000D+02 2.000000000000000000D+02 4.53747297550031877D-115 1.000000000000000000D+00 2.26028138789988093D-115
//9.000000000000000000D+02 2.000000000000000000D+02 1.73230170612912589D-286 1.000000000000000000D+00 4.94036667462315110D-287
//1.000000000000000000D+03 2.000000000000000000D+02 0.000000000000000000D+00 1.000000000000000000D+00 0.000000000000000000D+00
];

precision = 1.e-12;
precinv = 1.e-8;
nt = size(table,"r");
for k = 1 : nt
  x = table(k,1);
  lambda = table(k,2);
  p = table(k,4);
  q = table(k,5);
  [ p1 , q1 ] = cdfpoi("PQ",x,lambda);
  x1 = cdfpoi("S",lambda,p,q);
  lambda1 = cdfpoi("Xlam",p,q,x);
  if ( %t ) then
    assert_checkalmostequal ( p1 , p , precision );
    assert_checkalmostequal ( q1 , q , precision );
    assert_checkalmostequal ( x1 , x , precinv );
    assert_checkalmostequal ( lambda1 , lambda , precinv );
  end
  if ( %f ) then
    dP = assert_computedigits ( p1 , p );
    dQ = assert_computedigits ( q1 , q );
    dx = assert_computedigits ( x1 , x );
    dl = assert_computedigits ( lambda , lambda1 );
    mprintf("Test #%3d/%3d: Digits p1= %.1f, q1=%.1f, X=%.1f, Lambda=%.1f\n",k,nt,dP,dQ,dx,dl);
  end
end

// IEEE support
// See http://bugzilla.scilab.org/show_bug.cgi?id=7296
Xlam = 0;
Std = 1;

S = %inf; // Inf
[P, Q] = cdfpoi("PQ", S, Xlam);
assert_checkequal(P, 1);
assert_checkequal(Q, 0);

S = %nan; // NaN
[P, Q] = cdfpoi("PQ", S, Xlam);
assert_checkequal(P, %nan);
assert_checkequal(Q, %nan);
