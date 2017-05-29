// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// ===========================================================================
//
// <-- Non-regression test for bug 12778 -->
//
// <-- CLI SHELL MODE -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12778
//
// <-- Short Description -->
// Weird bug when inserting an empty matrix in int matrix

x = int8([1 0 -2 1 3 7])
x(4)=[]
y = int8([1 0 -2 3 7])

assert_checkequal(x, y);

x = int16([1 0 -2 1 3 7])
x(4)=[]
y = int16([1 0 -2 3 7])

assert_checkequal(x, y);

x = int32([1 0 -2 1 3 7])
x(4)=[]
y = int32([1 0 -2 3 7])

assert_checkequal(x, y);

x = uint8([1 0 2 1 3 7])
x(4)=[]
y = uint8([1 0 2 3 7])

assert_checkequal(x, y);

x = uint16([1 0 2 1 3 7])
x(4)=[]
y = uint16([1 0 2 3 7])

assert_checkequal(x, y);

x = uint32([1 0 2 1 3 7])
x(4)=[]
y = uint32([1 0 2 3 7])

assert_checkequal(x, y);

