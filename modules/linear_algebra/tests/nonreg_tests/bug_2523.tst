// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2008 - INRIA Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 2523 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=2523
//
// <-- Short Description -->
// slash and backslash matrix divisions involving vectors with %inf or %nan entries
// hang scilab


if execstr('[1 %inf]\1 ','errcatch')<>229 then pause,end
if execstr('[1 2]\%inf ','errcatch')<>229 then pause,end

if execstr('[1+%i %inf]\1 ','errcatch')<>229 then pause,end
if execstr('[1+%i %inf]\%i ','errcatch')<>229 then pause,end

if execstr('[1 %i]\%inf ','errcatch')<>229 then pause,end

if execstr('1/[1 %inf] ','errcatch')<>229 then pause,end
if execstr('%inf/[1 2] ','errcatch')<>229 then pause,end

if execstr('1/[1+%i %inf] ','errcatch')<>229 then pause,end
if execstr('%i/[1+%i %inf] ','errcatch')<>229 then pause,end

if execstr('%inf/[1 %i] ','errcatch')<>229 then pause,end

