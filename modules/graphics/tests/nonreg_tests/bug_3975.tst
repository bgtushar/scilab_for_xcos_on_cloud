// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Manuel Juliachs
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 3975 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=3975
//
// <-- Short Description -->
// xload is not able to load the contents of a previously saved figure
// into the current one

f13 = scf(13);
plot(1:5);

save(TMPDIR + "/save.scg", "f13");

f6 = scf(6);
xload(TMPDIR + "/save.scg");

// Check whether the curve's compound object has been loaded
if (f6.children(1).children(1) == []) then pause; end;

// Figure 6's curve polyline handle
pf6 = f6.children(1).children(1).children(1);

// Figure 13's curve polyline handle
pf13 = f13.children(1).children(1).children(1);

if (pf13.type <> pf6.type) then pause; end;

