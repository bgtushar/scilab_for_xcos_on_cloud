// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// y_{n+1} = y_n + 2*y_{n-1} + [1,2,3]*U_{n+1} + sig*1*e_{n+1} 

Ar=armac([1,-1,-2],[1,2,3],[1],1,3,0);
u= (1:4).*.ones(3,1);
y1=arsimul(Ar,u);
if y1<>[6,18,48,108] then pause,end
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;
a=rand('seed');
Ar('sig')=1;
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;

// y_{n+1} = y_n + 2*y_{n-1} + [1,2,3]*U_{n} + sig*1*e_{n+1} 

Ar=armac([1,-1,-2],[0,0,0,1,2,3],[1],1,3,0);
u= (1:4).*.ones(3,1);
y1=arsimul(Ar,u);
if y1<>[0,6,18,48] then pause,end
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;
a=rand('seed');
Ar('sig')=1;
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;

// y_{n+1} = y_n + 2*y_{n-1} + [1,2,3]*U_{n+1} -[4,5,6]*U_{n}+[7,8,9]*U_{n-1} + sig*1*e_{n+1} 

Ar=armac([1,-1,-2],[1,2,3,-4,-5,-6,7,8,9],[1],1,3,0);
u= (1:4).*.ones(3,1);
y1=arsimul(Ar,u);
if y1<>[6,3,27,60] then pause,end
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;
a=rand('seed');
Ar('sig')=1;
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;

// y_{n+1} = eye(2,2)*y_n + 2*eye(2,2)*y_{n-1} + [1,2,3;1,2,3]*U_{n+1} -[4,5,6;4,5,6]*U_{n}
//		+[7,8,9;7,8,9]*U_{n-1} + sig*eye(2,2)*e_{n+1} 

Ar=armac([1,-1,-2].*.eye(2,2),[1,2,3,-4,-5,-6,7,8,9].*.[1;1],[eye(2,2)],2,3,0);
u= (1:4).*.ones(3,1);
y1=arsimul(Ar,u);
if y1<>[6,3,27,60].*.[1;1] then pause,end
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;
a=rand('seed');
Ar('sig')=1;
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;

// y_{n+1} = ones(2,2)*y_n + 2*ones(2,2)*y_{n-1} + [1,2,3;1,2,3]*U_{n+1} -[4,5,6;4,5,6]*U_{n}
//		+[7,8,9;7,8,9]*U_{n-1} + sig*eye(2,2)*e_{n+1} 

Ar=armac([eye(2,2),-ones(2,2),-2*ones(2,2)],[1,2,3,-4,-5,-6,7,8,9].*.[1;1],[eye(2,2)],2,3,0);
u= (1:4).*.ones(3,1);
y1=arsimul(Ar,u);
if y1<>[6,9,54,171].*.[1;1] then pause,end
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;
a=rand('seed');
Ar('sig')=1;
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;

// y_{n+1} = ones(2,2)*y_n + 2*ones(2,2)*y_{n-1} + [1,2,3;1,2,3]*U_{n+1} -[4,5,6;4,5,6]*U_{n}
//		+[7,8,9;7,8,9]*U_{n-1} + sig*D*e_{n+1} 
// D=rand(2,10)
D=rand(2,10);
Ar=armac([eye(2,2),-ones(2,2),-2*ones(2,2)],[1,2,3,-4,-5,-6,7,8,9].*.[1;1],[D],2,3,1.0);
u= (1:4).*.ones(3,1);
a=rand('seed');
y1=arsimul(Ar,u);
rand('seed',a);
y2=narsimul(Ar,u);
if y1<>y2 then pause,end;



