// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 549 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=549
//
// <-- Short Description -->
//    Bug Report Id: 0321220031018153842
//     Le probl�me n'intervient qu'avec la version Linux de Scilab !!!
//    On Scilab 2.7 with " csim " function
//    The Error Messages are:
//      warning
//     matrix is close to singular or badly scaled. rcond =    1.0000E-08
//    computing least squares solution. (see lsq)
//    Commands:  G = syslin('c', (1-p)/((p+1)*(p+3)));
//     t = [0:1/100:8];
//    csim('step',t,G);
//    Allard Benoit on Linux version 3.0 / 9.1 distribution Debian / Mandrake with  WMaker / KDE as window manager
//    France
//    November 18, 2003 at 15:38:42

// <-- CLI SHELL MODE -->

p = poly(0,'p');
G = syslin('c', (1-p)/((p+1)*(p+3)));
t = [0:1/100:8];
csim('step',t,G);
