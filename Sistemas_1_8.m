function Sistemas_1_8%Gauss-Seidelformat longclearclca = [3 -1 -1; 1 3 1; 2 -2 4];%Matriz de coeficientesb = [1 5 4];%Vetorn = length(b);x0 = zeros(1,n);%Vetor de zeros uma linha e n colunasxa = x0;erro = 10^-7;k = 0;d = 1;  while (d>erro)    k = k + 1;    for i = 1 : n %Mudan�a de linha      soma=0;      for j = 1 : n %Mudan�a de coluna        if j ~= i %N�o pode ser igual i e j para o calculo          soma = soma + a(i,j)*x0(j);        endif      endfor    x0(i) = (b(i) - soma)/a(i,i);%Agoras toda as vezes que calculamos iremos sobrescrecever direto no vetor    endfor     d = sum(abs(xa-x0));%d � vetor, sum � uma soma de todos os componentes do vetor    xa = x0;   endwhilekx0d