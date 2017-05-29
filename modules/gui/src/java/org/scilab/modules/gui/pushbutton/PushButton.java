/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2007 - INRIA - Vincent Couvert
 * Copyright (C) 2007 - INRIA - Marouane BEN JELLOUL
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

package org.scilab.modules.gui.pushbutton;

import org.scilab.modules.gui.widget.Widget;

/**
 * Interface for PushButton associated to objects in Scilab GUIs
 * @author Vincent COUVERT
 * @author Marouane BEN JELLOUL
 */
public interface PushButton extends Widget {

    /**
     * Gets this Bridge component object
     * @return this Bridge component object
     */
    SimplePushButton getAsSimplePushButton();

    /**
     * Sets the icon of a PushButton
     * @param filename the path to the icon image to set to the PushButton
     */
    void setIcon(String filename);

    /**
     * Set the string to be displayed when the mouse cursor is over the PushButton
     * TODO move this method in Widget or UIElement
     *
     * @param toolTipText the string to set
     */
    void setToolTipText(String toolTipText);
}
