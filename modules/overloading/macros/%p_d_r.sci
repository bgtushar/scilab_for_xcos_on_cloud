// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) INRIA
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function f=%p_d_r(n1,f2)
    // n1./f2
    //!

    f=rlist(n1.*f2("den"),ones(n1).*f2("num"),f2("dt"))
endfunction
