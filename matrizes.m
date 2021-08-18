clear
clc
a=b=c=d=x=y=z=w=m1=m2=m3=m4=0;
  a=input("insira na M1 linha 1 coluna 1 ");
  b=input("insira na M1 linha 2 coluna 1 ");
  c=input("insira na M1 linha 1 coluna 2 ");
  d=input("insira na M1 linha 2 coluna 2 ");
  x=input("insira na M2 linha 1 coluna 1 ");
  y=input("insira na M2 linha 2 coluna 1 ");
  z=input("insira na M2 linha 1 coluna 2 ");
  w=input("insira na M2 linha 2 coluna 2 ");
  
m1 = a*x + c*y;
m2 = b*x + d*y;
m3 = a*z + c*w;
m4 = b*z + d*w;

m1
m2
m3
m4

return;