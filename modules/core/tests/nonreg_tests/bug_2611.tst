// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 2611 (part 1) -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=2611
//
// <-- Short Description -->
// for loop variable not removed when an error arises within a for called in try context

// <-- ENGLISH IMPOSED -->

funcprot(0);

function r=test()
  r=%f
  try
    for j=1:3, error('test',1001); end
  catch
    r=%t
  end
endfunction
if ~test() then pause,end
if lasterror()<>'test' then pause,end


deff('r=test()',['r=%f'
'try,'
'    for j=1:3, error(''test'',1001); end,'
'catch'
'    r=%t'
'end'],'n')
if ~test() then pause,end
if lasterror()<>'test' then pause,end

