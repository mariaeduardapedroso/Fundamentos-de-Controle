ans = atan(6.18/(-3.6+6));

resul = ans*180/pi;

%%
g1 = tf(1,[1 10 24 0])
rlocus(g1) %k=43.3

g2 = tf([1 3.026],[1 10 24 0])
rlocus(g2) %k=47.2
%%
t1 = feedback(43.3*g1,1)
t2 = feedback(47.2*g2,1)

linearSystemAnalyzer(t1,t2)

%%
% OUTRO EXERCICIO
g2 = tf(1,[1 10 24 0]);
rlocus(g2) 
k=63.3;

%%
%ACHAR ANGULO DO POLO COM O POLO NOVO
TETA1 = angle((-2.02+5.26j)-(-6))*180/pi;
TETA2 = angle((-2.02+5.26j)-(-5))*180/pi;
TETA3 = angle((-2.02+5.26j)-(-4))*180/pi;
TETA4 = angle((-2.02+5.26j)-(-0))*180/pi;
%ANGULOZEROS - ANGULOPOLOS(POLODOCOMPENSADOR) = 180
NOVOTETACOMPENSADOR = TETA2 - TETA1 -TETA3 - TETA4 - 180;

NOVOTETACOMPENSADOR = NOVOTETACOMPENSADOR+360;

PC=5.16/tan(0.19)*180/pi+2.02

%%
g1 = tf(1,[1 10 24 0]);
rlocus(g1) 
k1=63.3;
den = conv([1 10 24 0],[1,43.7])
g2=tf([1 5],den)
rlocus(g2) 
k2=1450
t1 = feedback(k1*g1,1)
t2 = feedback(k2*g2,1)