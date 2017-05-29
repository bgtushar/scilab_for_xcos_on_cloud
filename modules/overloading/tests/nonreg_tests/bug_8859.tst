// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - INRIA - Serge.Steer@inria.fr
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8859 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=8859
//
// <-- Short Description -->
//Missing some comparison operators for hypermatrices compared to scalar

I=int32(ones(2,2,2));
assert_checktrue(execstr("t=I<>int32(1)","errcatch")==0);
assert_checktrue(~or(t(:)));


B=ones(2,2,2)>3;
assert_checktrue(execstr("t=B==%t","errcatch")==0);
assert_checktrue(~or(t(:)));

assert_checktrue(execstr("t=B<>%t","errcatch")==0);
assert_checktrue(or(t(:)));

P=%s;P(2,2,2)=%s;
assert_checktrue(execstr("t=P==%s+1","errcatch")==0);
assert_checktrue(~or(t(:)));


assert_checktrue(execstr("t=P<>%s+1","errcatch")==0);
assert_checktrue(or(t(:)));


S=string(rand(2,2,2));
assert_checktrue(execstr("t=S==''x''","errcatch")==0);
assert_checktrue(~or(t(:)));


assert_checktrue(execstr("t=S<>''x''","errcatch")==0);
assert_checktrue(or(t(:)));


