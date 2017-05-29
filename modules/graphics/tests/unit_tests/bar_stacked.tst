// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Jean-Baptiste SILVY <jean-baptiste.silvy@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// non regression bug for bar and barh with stacked property

// use to only long red bars
x=[1 2 5]; y=[1 4 7;2 5 8;3 6  9];
barh(x,y,'stacked');

// this one too
scf(1);
x=[1 2 5]; y=[1 4 7;2 5 8;3 6  9];
bar(x,y,'stacked');




