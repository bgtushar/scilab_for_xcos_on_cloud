// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Pierre MARECHAL
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4666 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4666
//
// <-- Short Description -->
// SCIHOME is not well defined if scilab has been launched in another scilab session

my_dir = pathconvert(SCIHOME+"/bug_4666");

if mkdir(my_dir) <> 1 then pause, end

if isdir(my_dir) then
	rmdir(my_dir);
end
