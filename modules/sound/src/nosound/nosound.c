/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2006 - INRIA - Allan CORNET
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

/*--------------------------------------------------------------------------*/
#include "gw_sound.h"
#include "localization.h"
#include "Scierror.h"
/*--------------------------------------------------------------------------*/
int gw_sound(void)
{
    Scierror(999, _("Scilab sound module not installed.\n"));
    return 0;
}
/*--------------------------------------------------------------------------*/
