den=conv([1 0],conv([1 6],[1 10]));
g=tf(1,den);
rlocus(g)%achar 20% e ver ganho == 192

%%
%achar tetas
TETA1 = angle((-3.5+7j)-(-10))*180/pi;
TETA3 = angle((-3.5+7j)-(0))*180/pi;

%ANGULOZEROS - ANGULOPOLOS(POLODOCOMPENSADOR) = 180
NOVOTETACOMPENSADOR =- TETA1 - TETA3 - 180;

NOVOTETACOMPENSADOR = NOVOTETACOMPENSADOR+360;

%%
%achar pc
PC=7/tan(16.31*pi/180)+3.51;

%%
den=conv([1 0],conv([1 27.43],[1 10]));
g2=tf(1,den);
rlocus(g2)%achar 20% e ver ganho == 1820
%%
%Achando ganho g3
den=conv([1 0],conv([1 27.43],conv([1 0.01],[1 10])));
g3=tf([1 0.0486],den);
rlocus(g3);%achar 20% e ver ganho == 1810
%%
%plotando tudo
% primeiro 
den=conv([1 0],conv([1 6],[1 10]));
g1=tf(1,den);
k1= 192;
t1=feedback(k1*g1,1);

%Segunda
den=conv([1 0],conv([1 27.43],[1 10]));
g2=tf(1,den);
k2=1820;
t2=feedback(k2*g2,1);

%terceira
den=conv([1 0],conv([1 27.43],conv([1 0.01],[1 10])));
g3=tf([1 0.0486],den);
k3=1810;
t3=feedback(k3*g3,1);

r=tf(1,[1 0]);%degrau pra ,ultiplicar com sistemAnalyser que ja da degrau e gerar rampa
linearSystemAnalyzer(r*t1,r*t2,r*t3,r)


