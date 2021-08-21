function Sistemas_1_13
%Ajuste Exponencial
clc
clear
x = [0.2:0.1:0.8];
y = [3.16 2.38 1.75 1.34 1 0.74 0.56];
z = log(y)%ln
n = length(x); %numero de pontos
M = 1; %Sempre 1 - linearizamos ele e temos ocaso exponencial(sempre 2x2)
k = 0;
for i = 1 : M+1
  for j = 1 : M+1
    a(i,j) = 0; %é zero pois no primeiro termo é sempre multiplicado por x^0
    for k = 1 : n
      a(i,j) = a(i,j)+x(k)^(j+i-2);
    endfor
  endfor
  b(i) = 0;
  for k = 1 : n
    b(i) = b(i)+z(k)*x(k)^(i-1);
  endfor
endfor
a
b
D = det(a)
NC = cond(a)
c = a\b' %Eliminação Gauss
c(1) = exp(c(1));
c
pause
for i = 1 : n
  g(i) = c(1)*exp(c(2)*x(i));
endfor
g; %não é igual a y
plot(x,y,'o')
grid
hold on
plot(x,g,'r')

