function bissecao
  clear
  clc 
  a=0;
  b=2;
  fa=exp(a)-2*cos(a);
  fb=exp(b)-2*cos(b);
  x=[a:0.2:b];
  y=exp(x)-2*cos(x);
  plot(x,y)
  grid
  hold on
  erro=10^-7;
  k=0; %numero iteracoes
  fxm=1;
  while(abs(fxm)>erro)
    k=k+1;
    xm=(a+b)/2 %aproximacao da raiz
    fxm=exp(xm)-2*cos(xm)
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