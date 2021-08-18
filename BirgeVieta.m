clear
clc
a=[1 0 2 -1];
n=length(a);
erro=10^-7;
x0=1; %estimativa inicial
k=0; %numero iteracoes
b(1)=a(1);
c(1)=b(1);
b(n)=1; %valor qualquer maior > erroinicializacao
while (abs(b(n))>erro)
    k=k+1;
    for i=2:n-1
      b(i)=b(i-1)*x0+a(i);
      c(i)=c(i-1)*x0+b(i);
    endfor
    b(n)=b(n-1)*x0+a(n);
    x0=x0-(b(n))/(c(n-1));
endwhile
  k
  x0
  b(n)
