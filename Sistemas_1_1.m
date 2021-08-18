function Sistemas_1_2
% SEM PIVOTAMENTO
clc
clear
  a = [-0.421 0.784 0.279; 0.448 0.832 0.193; 0.421 0.784 -0.207]; %Matriz a
  b = [0 1 0]; %Vetor b
  ca=a;%copia de a
  cb=b;%copia de b
  n = length(b);%Comprimento do vetor b
    for k=1:n-1 %Linha pivô e coef pivô
      for i=k +1:n
        mult = a(i,k)/a(k,k);
        for j=k:n
          a(i,j) = a(i,j)-mult*a(k,j);
        endfor
        b(i) = b(i)-mult*b(k);
      endfor
    endfor
a
b
%------------------retrosubstutuicao---------------------
x(n) = b(n)/a(n,n);
for i=n-1:-1:1 % o termo -2 é para decrementar
  soma=0;
  for j = i+1:n
    soma = soma+a(i,j)*x(j);
  endfor
  x(i)=(b(i)-soma)/a(i,i);
endfor
x
%residuo------------tem que ter copia do vetor original
r=abs(cb'-ca*x')
endfunction