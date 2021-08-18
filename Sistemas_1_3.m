function Sistemas_1_3
%PIVOTAMENTO PARCIAL 2 Guardamos a orem em que as equacoes sao tratadas em um vetor indice o
%Nao iremos usar uma troca fisica para descidir a linha pivo
clc
clear
  a = [1 -1 1;2 3 -1; -3 1 1]; %Matriz a
  b = [1 4 -1]; %Vetor b
  ca=a;%copia de a
  cb=b;%copia de b
  n = length(b);%Comprimento do vetor b
  o=[1 2 3];
    for k=1:n-1 %Linha pivo e coef pivo
      maior = abs(a(o(k),k)); %Maior numero em módulo para a escolha do pivo
      p=k;%Guarda a linha pivo
      for i=k+1:n
        if (abs(a(o(i),k))>maior)
          maior = abs(a(o(i),k));%Guarda o maior para comparar com as seguintes linhas
          p=i;%Substitui a linha pivo quando o if e respeitado
        endif
      endfor
      if (p>k) %Troca de linhas apenas no vetor o
        aux=o(k); %Trocando vetor b
        o(k)=o(p);
        o(p)=aux;     
      endif
      for i=k + 1:n %Escalonamento
        mult = a(o(i),k)/a(o(k),k);
        for j=k:n
          a(o(i),j) = a(o(i),j)-mult*a(o(k),j);
        endfor
        b(o(i)) = b(o(i))-mult*b(o(k));
      endfor
    endfor
a
b
%------------------retrosubstutuicao---------------------
x(n) = b(o(n))/a(o(n),n);
for i=n-1:-1:1 % o termo -2 é para decrementar
  soma=0;
  for j = i+1:n
    soma = soma+a(o(i),j)*x(j);
  endfor
  x(i)=(b(o(i))-soma)/a(o(i),i);
endfor
x
o
%residuo------------tem que ter copia do vetor original
r=abs(cb'-ca*x')%"'" é o transposto
endfunction