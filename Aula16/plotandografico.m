% g = tf([1 1.5],[1 11 10 0]);%função de transferencia
% 
% linearSystemAnalyzer(g);
% 
% rlocus(g);%lugar das raizes
% 
% t1=feedback(7.5*g,1);
% linearSystemAnalyzer(t1);
% 
% t2=feedback(12.8*g,1);
% linearSystemAnalyzer(t2);
% 
% t3=feedback(39.6*g,1);
% linearSystemAnalyzer(t3);
% 
% linearSystemAnalyzer(t1,t2,t3);

%%
%8.6
den = conv([1 2],conv([1 4],[1 6]));
g = tf([1],den);%função de transferencia

linearSystemAnalyzer(g);

rlocus(g);%lugar das raizes

t1=feedback(45.7*g,1);
linearSystemAnalyzer(t1);