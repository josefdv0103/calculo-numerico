function Sistemas_1_7
%Jacobi
format long
clear
clc
a = [3 -1 -1; 1 3 1; 2 -2 4];%Matriz de coeficientes
b = [1 5 4];%Vetor
n = length(b);
x0 = zeros(1,n);%Vetor de zeros uma linha e n colunas
erro = 10^-7;
k = 0;
d=1;
  while (d>erro)
    k = k + 1;
    for i = 1 : n %Mudança de linha
      soma=0;
      for j = 1 : n %Mudança de coluna
        if j ~= i %Não pode ser igual i e j para o calculo
          soma = soma + a(i,j)*x0(j);
        endif
      endfor
    x(i) = (b(i) - soma)/a(i,i);
    endfor 
    d = sum(abs(x-x0));%d é vetor, sum é uma soma de todos os componentes do vetor
    x0 = x;
   endwhile
k
x
d