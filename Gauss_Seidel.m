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
disp('***********  Gauss-Seidel:  ****************************')

M=input('INTRODUZCA A= ');
Tol=input('INTRODUZCA TOL= ');
X=input('INTRODUZCA X= ');
Y=input('INTRODUZCA Y= ');
Z=input('INTRODUZCA Z= ');

R= [ ];
ii= 0;
jj = 0;
contador = 0;
for ii=1:3
    contador = contador + 1;
    aux= M(ii,contador);
    for jj= 1:4
        M(ii,jj)= M(ii,jj)/aux;
    end
end
normaX1 = 1;
normaX3 = 1;
normaX2 = 1;
while (normaX1 > Tol) &(normaX2 >Tol) & (normaX3 > Tol)
    
    X1= M(1,4) + (-M(1,2)*Y)+ (-M(1,3)*Z);
    normaX1= abs(X - X1);
    X = X1;
    X2= M(2,4) + (-M(2,1)*X)+ (-M(2,3)*Z);
    normaX2= abs(Y - X2);
    Y = X2;
    X3= M(3,4) + (-M(3,1)*X)+ (-M(3,2)*Y);
    normaX3= abs(Z - X3);
    Z = X3;
    R= [R; X Y Z];
end