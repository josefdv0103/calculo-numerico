function Treino02
  clear
  clc
  format long
  a=1;
  b=1.5;
  x=[a:0.1:b];
  y=funcao(x);
  fa=funcao(a);
  fb=funcao(b);
  plot(x,y)
  grid
  hold on
  k=1;
  fxm=1;
  erro=10^-7;
    while (abs(fxm)>erro)
      k=k+1;
      xm=a-((fa*(b-a))/(fb-fa))
      fxm=funcao(xm) %aproximação para compararmos com o erro
      r=fa+((fb-fa)/(b-a))*(x-a); %reta tangente
      plot(x,r,'r')
      hold on
      pause
      if (fxm*fa<0)
        b=xm;
        fb=fxm;
      else 
        a=xm;
        fa=fxm;
      endif
      a
      b
      pause
    endwhile
  k
  fxm
  xm
endfunction
function f=funcao(x)
  f=x.^3-3;
  endfunction