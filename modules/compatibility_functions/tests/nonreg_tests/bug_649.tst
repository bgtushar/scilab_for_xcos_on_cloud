// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 649 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=649
//
// <-- Short Description -->
//    scilab crashes under windows, under linux, Scilab loops forever,
//    and it uses the whole CPU resource.

// 2009-01-09 mtlb_save is removed => savematfile

x = rand(5,5,100)+%i;
warning('off');
ierr = execstr('savematfile TMPDIR/bug_649.mat x','errcatch');
warning('on');
fields = getfield(1,x);
if ierr<>999 | lasterror()<>msprintf(gettext("%s: Mlists of type %s can not be written to Matlab binary files.\n"), "GetMlistVariable", fields(1)) then pause, end
