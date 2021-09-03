function Sistemas_1_16
%Interpolação Polinomial
clear 
clc
x = [-1 0 1];
y = [4; 1; -1];
n = length(x);
grau = n - 1;
for i = 1 : n
  for j = 1 : n
    V(i, j) = x(i)^(j-1);
  endfor
endfor
a = V\y
xx = 0.5 %ponto de interpolação
px = avalia(xx, n, a)
x1 = [x(1):0.2:x(n)];%avaliar se esse intervalo é bom para interpolação, suaviza a curva
n1 = length(x1);
for j = 1 : n1
  p(j) = avalia(x1(j), n, a);
  p
endfor
plot(x, y, '*')
grid
hold on
plot(x1, p, 'r')
hold on
plot(xx, px, 'go')
endfunction
function p = avalia(xx, n, a)%Vetor ou um ponto só
p = 0;
for i = 1 : n
  p = p + a(i) * xx^(i-1);
endfor
endfunction