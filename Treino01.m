function Treino01
  clear
  clc
  a=0;
  b=10;
  fa=funcao(a);
  fb=funcao(b);
  x=[a:0,1:b]; %Valores de x que vamos introduzir no gráfico
  y=funcao(x);
  plot(x,y)
  grid
  hold on
  erro=10^-7;
  k=0;
  fxm=1; %O ponto do y que interceta a reta
  while (abs(fxm)>erro)
    k=k+1
    xm=a-((fa*(b-a))/(fb-fa)) %Componente x da reta que intercepta a curva
    fxm=funcao(xm) %Componente y da reta que intercepta a curva
    r=fa+((fb-fa)/(b-a))*(x-a); %Novo y(xm) para formar a reta que passa por [a,xm] ou [xm,b]
    plot(x,r,'r')
    hold on
    pause
    if(fa*fxm<0) %Conferir intervalos para substituicao
        b=xm;
        fb=fxm;
      else
        a=xm;
        fa=fxm;
      end %Declarar Limites de intervalos
      a
      b
      pause
  end
    k %Números de repeticoes
    xm %raiz
    fxm %precisao|fxm|<erro
end

function f=funcao(x)
    f=(x.^2)-1; %O ponto e para fazer a multiplicacao vetor x vetor e retona vetor 
endfunction