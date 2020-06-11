%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer by: Ing. Daniel Rodriguez                                    %
% Newton Rapson                                                          %
%                    March de 2016                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
%Keyboard input:
disp(' ')
disp(' ')
disp('***********  Newton-Rapson:  ****************************')

A=input('INTRODUZCA A= ');
Tol=input('INTRODUZCA TOL= ');
Fx=input('INTRODUZCA LA FUNCION f(x) entre apóstrofes:  ')
Xk= A;
FXk= 0;
FdXk= 0;
fxkeva= 0;
fdxkeva= 0;
tol1= Tol;
R=[ ];
FXk= Fx
x= sym('x');
FdXk =diff(Fx);

fxkeva= subs(FXk,Xk);

while abs(fxkeva) > tol1
    
fxkeva= subs(FXk,Xk);
fdxkeva= subs(FdXk,Xk);
R= [R; Xk fxkeva fdxkeva];
Xksig= Xk - (fxkeva/fdxkeva);

Xk= (Xksig);

end