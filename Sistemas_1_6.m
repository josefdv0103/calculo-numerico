function Sistemas_1_6
%Doolittle
format long
clear
clc
a=[4 2 3;2 -4 -1;-1 1 4];
b=[7 1 -5];
n=length(b);
  for k=1:n
    for j=k:n
    soma=0;
      for t=1:k-1
      soma=soma+L(k,t)*U(t,j);
      end
  U(k,j)=a(k,j)-soma;
    end
  L(k,k)=1;
  for i=k+1:n
  soma=0;
    for t=1:k-1
    soma=soma+L(i,t)*U(t,k);
    end
    L(i,k)=(a(i,k)-soma)/U(k,k);
  end
  end
L
U
pause
%-------Substituicao Direta Ly = b----------
y(1) = b(1)/L(1,1);
for i=2:n
  soma=0;
  for j=1:i-1
    soma=soma+L(i,j)*y(j);
  endfor
  y(i) = (b(i)-soma)/L(i,i);
endfor
y
%-------Retrosubstutuicao Ux = y -----------
x(n) = y(n)/U(n,n);
for i = n-1:-1:1 % o termo -2 é para decrementar
  soma=0;
  for j = i+1:n
    soma = soma+U(i,j)*x(j);
  endfor
  x(i) = (y(i)-soma)/U(i,i);
endfor
x
%--Resíduo---
r = abs(b'-a*x')