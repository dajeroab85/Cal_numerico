%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer by: Ing. Daniel Rodriguez                                    %
% Bisection method                                                       %
%                    March de 2016                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
%Keyboard input:
disp(' ')
disp(' ')
disp('***********  Secante Method:  ****************************')

A=input('INTRODUZCA A= ');
B=input('INTRODUZCA B= ');
Tol=input('INTRODUZCA TOL= ');
Fx=input('INTRODUZCA LA FUNCION f(x) entre apóstrofes:  ')

FXk1=0;
FXk=0;
Xksig=0;
R= [ ];

x= sym ('x');

FXk1= subs(Fx,A);
FXk= subs(Fx,B);
Xksig= ((FXk*A) - (FXk1*B))/(FXk-FXk1);

while (FXk > Tol)
    
R = [R; A B FXk1 FXk Xksig];     
A = B;
B = Xksig;
FXk1= subs(Fx,A);
FXk= subs(Fx,B);
Xksig= ((FXk*A) - (FXk1*B))/(FXk-FXk1);

end