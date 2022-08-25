%% EXERCICIO 1
syms s I1 I2 I3 V

A=[(2*s+2) -(1+2) -1;-(1+2*s) (1+4*s) -4*s;-1 -4*s (1+4*s+1/s)]; %MATRIZ DOS VALORES 

B=[I1; I2; I3]; %MATRIZ COM OQ QUEREMOS ACHAR

C=[V;0;0]; % MATRIZ RESULTADO
 
B= inv(A)*C; 


pretty(B)

%% EXERCICIO 1 COM STEP
g=tf([0 8 13 1 0],[24 30 17 16 1]);%POLINOMIO
step(g) %DEGRAU NO G
%% EXERCICIO 2
syms s I1 I2 I3 V

A=[(1+s) -s -1;-s (2*s+1) -1;-1 -1 (2+s)];

B=[I1; I2; I3];

C=[V;0;0];
 
B= inv(A)*C;


pretty(B)

%% EXERCICIO 2 COM STEP
g=tf([1 2 1],[1 5 2]);
step(g)
