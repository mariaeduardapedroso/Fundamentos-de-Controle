%% EXERCICIO 2
syms s X1 X2 F

A=[(3*s+s^2+1) -(3*s+1);-(3*s+1) (4*s+s^2+1)]; %MATRIZ DOS VALORES 

B=[X1; X2]; %MATRIZ COM OQ QUEREMOS ACHAR

C=[F;0]; % MATRIZ RESULTADO
 
B= inv(A)*C; 
%B=A/B
%mesma coisa que a funcao de cima


pretty(B)

%% EXERCICIO 2 COM STEP
g=tf([0 8 13 1 0],[24 30 17 16 1]);%POLINOMIO
step(g) %DEGRAU NO G
