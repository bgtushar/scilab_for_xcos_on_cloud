// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
//
// <-- Non-regression test for bug 9699 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/9699
//
// <-- Short Description -->
// A single $ as text in a text ui led to a segfault

Dialog1=figure('figure_name','Dialog1',...
'position',[ 668 19 310 453  ],...
'backgroundcolor',[ 1 0.9921569 0.9490196 ],...
'tag','Dialog1');

Textbox2=uicontrol(Dialog1,'style','text'...
,'tag','Textbox2'...
,'position',[ 102 100 150 50 ]...
,'string',' A string '...
,'backgroundcolor',[ 1 0.9921569 0.9490196 ]...
,'fontsize',40...
);

set(Textbox2,'string','$')
