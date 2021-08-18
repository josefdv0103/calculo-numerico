function Lista2_2
  format long
  clear
  clc
  a=2;
  b=2.3;
  fa=funcao(a);
  fb=funcao(b);
  erro=10^-7;
  fxm=1;
  k=0;
    while (abs(fxm)>erro)
      k=k+1;
      xm=(a+b)/2;
      fxm=funcao(xm);
      if (fxm*fa>0)
        a=xm;
        fa=fxm;
      else
        b=xm;
        fb=fxm;
      endif
    endwhile
    printf("\nBissecao\n")
    printf("\n------------------------------------------\n")
xm
fxm
k
    printf("\n------------------------------------------\n")

  k=0;
  erro=10^-7;
  x0=6;
  fx=funcao(x0);
  dfx=derivada(x0);
    while (abs(fx)>erro)
      k=k+1;
      xk=x0-fx/dfx;
      x0=xk;
      fx=funcao(x0);
      dfx=derivada(x0);
    end
      printf("\nNewton\n")
      printf("\n-------------------------------\n")
      xk
      k
      fx
      printf("---------------------------------\n")
endfunction 

function f=funcao(x)
  f=(x^3)-9;
endfunction
function f1=derivada(x)
  f1=3*(x^2);
endfunction