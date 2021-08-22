function Sistemas_1_14
%Ajuste Exponencial 2
clc
clear
x = [1 3 4 6];
y = [2.5 13 22 36];
z = log(y);%ln(y)
n = length(x); %numero de pontos
M = 1; %Sempre 1 - linearizamos ele e temos ocaso exponencial(sempre 2x2)
for i = 1 : M+1
  for j = 1 : M+1
    a(i,j) = 0; %� zero pois no primeiro termo � sempre multiplicado por x^0
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
c = a\b'; %Elimina��o Gauss
c = exp(c);
c
pause
for i = 1 : n
  g(i) = c(1)*c(2)^x(i);
endfor
g; %n�o � igual a y
plot(x,y,'o')
grid
hold on
plot(x,g,'r')

