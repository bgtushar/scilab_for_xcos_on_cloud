// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- JVM MANDATORY -->
//
// <-- ENGLISH IMPOSED -->
//
// <-- NO CHECK ERROR OUTPUT --> 
//
// <-- Non-regression test for bug 12548 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12548
//
// <-- Short Description -->
// Duplicated code in xmltoformat

function a = bug_12548(b, c, d)
  a = 0;
endfunction

test_bug_12548 = "bug_12548";
pathDest = TMPDIR + filesep() + test_bug_12548 + filesep();
mkdir(TMPDIR, test_bug_12548);

mputl(help_skeleton("bug_12548"), pathDest + "bug_12548.xml");

assert_checktrue(execstr("xmltoformat(""javaHelp"",pathDest, ""bug help"")","errcatch")==0);
