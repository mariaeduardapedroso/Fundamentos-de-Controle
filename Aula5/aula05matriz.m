syms s I1 I2 I3 V

A=[(2*s+2) -(1+2) -1;-(1+2*s) (1+4*s) -4*s;-1 -4*s (1+4*s+1/s)];

B=[I1; I2; I3];

C=[V;0;0];
 
B= inv(A)*C;


pretty(B)

%%
g=tf([0 8 13 1 0],[24 30 17 16 1]);
step(g)
%%
syms s I1 I2 I3 V

A=[(1+s) -s -1;-s (2*s+1) -1;-1 -1 (2+s)];

B=[I1; I2; I3];

C=[V;0;0];
 
B= inv(A)*C;


pretty(B)
