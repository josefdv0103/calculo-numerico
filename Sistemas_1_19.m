function Sistemas_1_19
 %Exemplo Interpolação de Lagrange
clear
clc
x = [2 : 0.05 : 2.15];
y = log (x);
n = length(y);
xx = 2.14;%ponto para interpolar
px = Lag(x, y, n, xx)
%---------Parte Gráfica-----------------------------------------
x1 = [x(1) : 0.01 : x(n)];%avaliar se esse intervalo é bom para interpolação, suaviza a curva
n1 = length(x1);
for k = 1 : n1
  p1(k) = Lag(x, y, n, x1(k));
endfor
plot(x, y, '*')
grid
hold on
plot(x1, p1, 'r')
hold on
plot(xx, px, 'go')
%-------------------------------------------------------------------
endfunction
function p = Lag(x, y, n, xx)
  p = 0;
for i = 1 : n
  num = 1;
  den = 1;
  for j = 1 : n
    if (j != i)
      num = num * (xx - x(j));
      den = den * (x(i) - x(j));
    endif
  endfor
L = num/den;
p = p + y(i) * L;
endfor
endfunction