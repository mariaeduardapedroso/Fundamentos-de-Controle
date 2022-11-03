den = conv([1 25],[1 35]);
den = conv(den,[1 50]);
den = conv(den,[1 0 0]);

num = conv([1 20],[1 30]);
num = num*10;

g = tf(num,den);

t = feedback(g,1);
linearSystemAnalyzer(t);