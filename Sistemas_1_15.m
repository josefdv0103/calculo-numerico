function Sistemas_1_15
%Ajuste Logarítmico
clc
clear
x = [1 2 3 4];
y = [3 5 6 8];
x = log(x);%ln(x)
n = length(x); %numero de pontos
M = 1; %Sempre 1 - linearizamos ele e temos ocaso exponencial(sempre 2x2)
for i = 1 : M+1
  for j = 1 : M+1
    a(i,j) = 0; %é zero pois no primeiro termo é sempre multiplicado por x^0
    for k = 1 : n
      a(i,j) = a(i,j)+x(k)^(j+i-2);
    endfor
  endfor
  b(i) = 0;
  for k = 1 : n
    b(i) = b(i)+y(k)*x(k)^(i-1);
  endfor
endfor
a
b
D = det(a)
NC = cond(a)
c = a\b'; %Eliminação Gauss
c
pause
for i = 1 : n
  g(i) = c(1) + c(2)*x(i);
endfor
g; %não é igual a y
plot(exp(x),y,'o')
grid
hold on
plot(exp(x),g,'r')

