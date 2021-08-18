function Secante
 clear
 clc
 a=0;
 b=1; % [a,b] utilizar pra o grafico
 erro=10^-7;
 k=0; %numero iteracoes 
 x0=0; %estimativa inicial
 x1=1; %estimativa inicial
 f0=funcao(x0);
 f1=funcao(x1);
 while (abs(f1)>erro)
    k=k+1;
    xk=x1-((x1-x0)*f1)/(f1-f0); %aproximacao da raiz
    x0=x1;
    x1=xk
    f0=f1;
    f1=funcao(x1)
    pause
  end
  k
  xk
  f1
end
function f=funcao(x)
  f=exp(x)*sin(x)-1;
end