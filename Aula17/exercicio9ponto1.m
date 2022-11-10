%%
den = conv([1 1],conv([1 2],[1 10]));
g1 = tf([1],den);%função de transferencia

g2= tf([1 0.1],[1 13 32 20 0])

figure(1); rlocus(g1);%165
figure(2); rlocus(g1);%158

t1=feedback(165*g1,1);
t2=feedback(158*g2,1);

linearSystemAnalyzer(t1,t2);

%vermelho sistema corrigodo o outro é sem correção e com erro de 0.01

% t1=feedback(45.7*g,1);
% linearSystemAnalyzer(t1);