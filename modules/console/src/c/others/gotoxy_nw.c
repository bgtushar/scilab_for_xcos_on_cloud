/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2007 - INRIA - Allan CORNET
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */
/*--------------------------------------------------------------------------*/
#include <stdio.h>
#include "gotoxy_nw.h"
/*--------------------------------------------------------------------------*/
#define GOTOXY_FORMAT "\033[%d;%dH"
/*--------------------------------------------------------------------------*/
void gotoxy_nw(int x, int y)
{
    printf(GOTOXY_FORMAT, y, x);
}
/*--------------------------------------------------------------------------*/
