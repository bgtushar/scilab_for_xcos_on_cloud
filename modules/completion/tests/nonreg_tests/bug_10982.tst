// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- JAVA NOT MANDATORY -->
//
// <-- Non-regression test for bug 10982 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=10982
//
// <-- Short Description -->
// Completion failed when space are used before the command.
//

ilib_verbose(0);
ierr = exec(SCI+"/modules/completion/tests/utilities/build_primitives.sce","errcatch",-1);
if ierr<>0 then pause, end
ierr = exec(TMPDIR + "/completion/loader.sce","errcatch",-1);
if ierr<>0 then pause, end

REF = 'cd cudascilab/sci_gateway/';
currentline = 'cd cudascilab/sc';
r = completeline(currentline,'sci_gateway/',getfilepartlevel(currentline),getpartlevel(currentline),%t);
assert_checkequal(r, REF);

REF = "~/Downl";
currentline = 'ls(""~/Downl';
r = getfilepartlevel(currentline);
assert_checkequal(r, REF);

currentline = 'out=ls(""~/Downl';
r = getfilepartlevel(currentline);
assert_checkequal(r, REF);

currentline = 'out =ls(""~/Downl';
r = getfilepartlevel(currentline);
assert_checkequal(r, REF);

currentline = 'out = ls(""~/Downl';
r = getfilepartlevel(currentline);
assert_checkequal(r, REF);

REF = 'c:\Program files';
currentline = '  cd c:\Program files';
r = getfilepartlevel(currentline);

REF = 'c:\';
currentline = 'for s=ls(""c:\';
r = getfilepartlevel(currentline);
