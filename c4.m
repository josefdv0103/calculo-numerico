 %Bisseção--------------------------------------------------------------
  function c4
  clear
  clc 
  a=0;
  b=2;
  fa=5-20*((exp(-0.2*a))-(exp(-0.75*a)));
  fb=5-20*((exp(-0.2*b))-(exp(-0.75*b)));
  x=[a:0.2:b];
  y=5-20*((exp(-0.2*a))-(exp(-0.75*a)));
  plot(x,y)
  grid
  hold on
  erro=10^-7;
  k=0; %numero iteracoes
  fxm=1;
  while(abs(fxm)>erro)
    k=k+1;
    xm=(a+b)/2 %aproximacao da raiz
    fxm=5-20*((exp(-0.2*xm))-(exp(-0.75*xm)))
    plot(xm,fxm,'r*')
    hold on  
    pause
    if(fa*fxm<0)
      b=xm;
      fb=fxm;
    else
      a=xm;
      fa=fxm;
    endif
    endwhile
printf"\n------------------------------------------------------\n"
printf("\nBissecao\n")
k
xm %raiz
fxm %precisao|fxm|<erro
printf"\n------------------------------------------------------\n"


endfunction
