function Treino03
  clear
  clc
  a=0;
  b=5;
  fa=funcao(a);
  fb=funcao(b);
  x=[a:0.5:b];
  y=funcao(x);
  plot(x,y)
  grid
  hold on
  erro=10^-7;
  fxm=1;
  k=0;
  while (abs(fxm)>erro)
    k=k+1;
    xm=a-((fa*(b-a))/(fb-fa))
    fxm=funcao(xm)
    r=fa+((fb-fa)/(b-a))*(x-a);
    plot(x,r,'r')
    hold on
    pause
    if (fa*fxm>0)
      pb=fa/(fa+fxm);
      fb=fb*pb;
      a=xm;
      fa=fxm;
    else (fb*fxm<0)
      pa=fb/(fb+fxm);
      fa=fa*pa;
      b=xm;
      fb=fxm;
    endif
    a
    b
  endwhile
  fxm
  k
  xm
endfunction
function f=funcao(x)
  f=x.^2-3;
  endfunction
