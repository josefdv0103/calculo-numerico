function Sistemas_1_2
%PIVOTAMENTO PARCIAL
clc
clear
  a = [1 -1 1;2 3 -1; -3 1 1]; %Matriz a
  b = [1 4 -1]; %Vetor b
  ca=a;%copia de a
  cb=b;%copia de b
  n = length(b);%Comprimento do vetor b
    for k=1:n-1 %Linha pivo e coef pivo
      maior = abs(a(k,k)); %Maior numero em módulo para a escolha do pivo
      p=k;%Guarda a linha pivo
      for i=k+1:n
        if (abs(a(i,k))>maior)
          maior = abs(a(i,k));%Guarda o maior para comparar com as seguintes linhas
          p=i;%Substitui a linha pivo quando o if e respeitado
        endif
      endfor
      if (p>k) %Troca de linhas fisicamente
        for j=k:n %Comando para usar a coluna seguinte a primeira iteracao
          aux=a(k,j);
          a(k,j)=a(p,j);
          a(p,j)=aux;
        endfor
        aux=b(k); %Trocando vetor b
        b(k)=b(p);
        b(p)=aux; 
        a
        b
      endif
      for i=k +1:n %Escalonamento
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