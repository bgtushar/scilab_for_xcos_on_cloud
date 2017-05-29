// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Sylvestre Koumar <sylvestre.koumar@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 3390 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=3390
//
// <-- Short Description -->
//    Scilab 5
//    When sca() is called with a bad number of argument, the returned error is not clear at all.

//	-->sca()
//  !--error 4 
//  Undefined variable: h
//
//  at line       2 of function sca called by :  
//  sca()

execstr("sca();","errcatch");
if lasterror() <> msprintf(gettext("%s: Wrong number of input arguments: %d expected.\n"), "sca",1) then pause,end
