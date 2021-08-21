function Sistemas_1_12
%Ajuste polinomial
clc
clear
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];
n = length(x); %numero de pontos
M = 1; %grau do ajuste
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
    b(i) = b(i)+y(k)*x(k)^(i-1);
  endfor
endfor
a
b
D = det(a)
NC = cond(a)
c = a\b'; %Eliminação Gauss
for i = 1 : n
  g(i) = 0;
  for j = 1 : M+1
    g(i) = g(i)+c(j)*x(i)^(j-1);
  endfor
endfor
g %não é igual a y

plot(x,y,'o')
grid
hold on
plot(x,g,'r')

