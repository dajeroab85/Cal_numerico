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
disp('***********  Bisection Method:  ****************************')

A=input('INTRODUZCA A= ');
B=input('INTRODUZCA B= ');
Tol=input('INTRODUZCA TOL= ');
Fx=input('INTRODUZCA LA FUNCION f(x) entre apóstrofes:  ')

x = sym('x');
C= (A+B)/2;
Fc = subs(Fx,C);
Tol1 = abs(Fc);
R=[];
while Tol1 > Tol  
    C= (A+B)/2;
    Fa = subs(Fx,A);
    Fb = subs(Fx,B);
    Fc = subs(Fx,C);
    Tol1 = abs(Fc);
    R= [R; A B C Fa Fb Fc];
    if Fa*Fc>0
        A = C;
        B = B;
    else
        A = A;
        B = C;
    end
    %R= [R; A B C Fa Fb Fc];
end
R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% input : se utiliza para la entrada de datos                            %%
%% sym('x'): se utliza para trabajar con una variable simbolica (ecuacion)%%
%% subs: se utiliza para evaluar la funcion con un numero                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%