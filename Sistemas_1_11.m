function Sistemas_1_11
 %Não Linear/Newton; transformamos um sistema nao linear em linear e resovemos por newton
clc
clear
x = [1;-1]; %Estimativa inicial, o ponto e virgula cria um vetor coluna
erro = 10^-7;
k = 0;
dif = 1;%Criterio de parada sempre maior que o erro
while (dif>erro)
  k = k+1;
  J(1,1) = exp(x(1));% Calculo a matriz ja cobiana uma por uma
  J(1,2) = 1;
  J(2,1) = 2*x(1);
  J(2,2) = 2*x(2);
  F(1) = exp(x(1))+x(2)-1;%Vetor f que nesse cso vai ser o meu B
  F(2) = x(1)^2+x(2)^2-4;
  d = J\-F';%'\'funcao do octave que resolve o sistema por eeliminação gausseana por pivotamento parcial
  x = x+d;
  dif = sum(abs(d));
endwhile
k
x
dif
endfunction