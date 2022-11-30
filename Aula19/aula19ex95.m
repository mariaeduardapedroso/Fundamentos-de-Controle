den = conv([1 3],conv([1 6],[1 10]))
g1=tf([1 8],den)
rlocus(g1)
%%
%achar os polos 
TETA1 = angle((-8.14+15.9j)-(-10))*180/pi;
TETA2 = angle((-8.14+15.9j)-(-8))*180/pi;
TETA3 = angle((-8.14+15.9j)-(-6))*180/pi;
TETA4 = angle((-8.14+15.9j)-(-3))*180/pi;

%ANGULOZEROS - ANGULOPOLOS(POLODOCOMPENSADOR) = 180
NOVOTETACOMPENSADOR = TETA2 - TETA1 -TETA3 - TETA4 - 180;

NOVOTETACOMPENSADOR = NOVOTETACOMPENSADOR+360;

PC=15.9/tan(18.4)*180/pi+8.4;

%%
den = conv([1 3],conv([1 6],[1 10]));
g1=tf([1 8],den);
k1=122;
t1=feedback(k1*g1,1);

den = conv([1 3],conv([1 6],[1 10]));
g2=tf(conv([1 8],[1 55.94]),den);
rlocus(g2);
k2=5.4; %achado no matlab
t2=feedback(k2*g2,1);
k3=18.8; %achado no matlab
t3=feedback(k3*g2,1);
linearSystemAnalyzer(t1,t2,t3)

%%
%PI
den = conv([1 3],conv([1 6],conv([1 10],[1 0]))); %com s
num = conv([1 3],conv([1 0.5],[1 55.94]));
g4 = tf(num,den);
k4 = 4.61;
t4 = feedback(k4*g4,1);
linearSystemAnalyzer(t1,t2,t4)