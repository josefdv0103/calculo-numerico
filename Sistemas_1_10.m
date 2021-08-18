function Sistemas_1_10
%PIVOTAMENTO PARCIAL
clc
clear
  r = [2 2 2 2 2];%Vetor r (diagonal principal)
  d = [1 1 1 1 0]; %Vetor d
  t = [0 1 1 1 1]; %Vetor t
  b = [4 4 0 0 2]; %Vetor b
  n = length(b);%Comprimento do vetor b
%---------Estrutura Repetição--------------------------  
    for i=2:n-1
        mult = t(i)/r(i-1);
        r(i) = r(i)-mult*d(i-1);
%---------Vetor b----------------------------------------
        b(i) = b(i)-mult*b(i-1);
    endfor

%------------------retrosubstutuicao---------------------
x(n) = b(n)/r(n);
for i=n-1:-1:1 % o termo -1 é para decrementar
  x(i)=(b(i)-d(i)*x(i+1))/r(i);
endfor
x
endfunction
