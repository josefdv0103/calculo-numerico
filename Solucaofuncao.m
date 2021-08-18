function Solucaofuncao
  clear
  clc 
  a=0;
  b=1;
  fa=funcao(a);
  fb=funcao(b);
  x=[a:0.1:b];
  y=funcao(x);
  plot(x,y)
  grid
  hold on
  erro=10^-7;
  k=0; %numero iteracoes
  fxm=1;
  while(abs(fxm)>erro)
    k=k+1;
    xm=(a+b)/2 %aproximacao da raiz
    fxm=funcao(xm)
    plot(xm,fxm,'r*')
    hold on
    pause
    if(fa*fxm<0)
      b=xm;
      fb=fxm;
    else
      a=xm;
      fa=fxm;
    end
  end
  k
  xm %raiz
  fxm %precisao|fxm|<erro
end


function f=funcao(x)
    f=exp(x).*sin(x)-1; %o ponto � para fazer a multiplica��o vetor vetor e retona vetor 
endfunction
