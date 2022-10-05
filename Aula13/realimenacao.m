g= tf([25],[1 5 25]);
linearSystemAnalyzer(g);

%%SISTEMA INSTAVEL
g= tf([25],[1 5 0]);
linearSystemAnalyzer(g);