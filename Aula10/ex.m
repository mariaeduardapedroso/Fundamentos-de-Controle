
%%
num = [ 1 7 2 ] ;
den = [ 1 9 26 24 ] ;
[ A , B , C , D ] = tf2ss( num , den ) ;
P = [0 0 1;0 1 0;1 0 0] ;
A = inv ( P ) * A * P
B - inv ( P ) * B
C = C * P
    
%%
num = [ 2 1 ] ;
den = [ 1 7 9 ] ;
[ A , B , C ] = tf2ss( num , den ) ;
P = [0 1;1 0] ;
A = inv ( P ) * A * P
B - inv ( P ) * B
C = C * P