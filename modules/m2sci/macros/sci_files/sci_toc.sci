// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2002-2004 - INRIA - Vincent COUVERT
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function [tree]=sci_toc(tree)
    // M2SCI function
    // Conversion function for Matlab toc
    // Input: tree = Matlab funcall tree
    // Ouput: tree = Scilab equivalent for tree

    tree.lhs(1).dims=list(1,1)
    tree.lhs(1).type=Type(Double,Real)
endfunction
