/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2007 - INRIA - Allan CORNET
 * Copyright (C) 2007 - INRIA - Sylvestre LEDRU
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */
/*--------------------------------------------------------------------------*/
#ifndef __GW_DIFFERENTIAL_EQUATIONS1__
#define __GW_DIFFERENTIAL_EQUATIONS1__
/*--------------------------------------------------------------------------*/
#include "dynlib_differential_equations.h"
/*--------------------------------------------------------------------------*/
DIFFERENTIAL_EQUATIONS_IMPEXP int gw_differential_equations1(void);
/*--------------------------------------------------------------------------*/
int sci_ode(char *fname, unsigned long fname_len);
/*--------------------------------------------------------------------------*/
#endif  /* __GW_DIFFERENTIAL_EQUATIONS1__ */
/*--------------------------------------------------------------------------*/
