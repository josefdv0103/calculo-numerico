function Lista2_3
  format long
  clear
  clc
  x0 = 1;
  k = 0;
  erro = 10^-7;
  fx = funcao(x0);
  dfx =  derivada(x0);
    while (abs(fx)>erro)
      k = k + 1;
      xk=x0-fx/dfx;
      x0=xk;
      fx = funcao(x0);
      dfx = derivada(x0);
    endwhile
      printf("\nNewton\n")
      printf("\n-------------------------------\n")
      xk
      k
      fx
      printf("---------------------------------\n")
%----------------------------------------------------------------------
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
      x1=xk;
      f0=f1;
      f1=funcao(x1);
    endwhile 
      printf("\nSecante\n")
      printf("\n-------------------------------\n")
      xk
      k
      f1
      printf("\n-------------------------------\n")
endfunction

  function f = funcao(x)
    f = (e^x) - 2*cos(x);
  endfunction 
  function f1 = derivada(x)
    f1 = (e^x) + 2*sin(x);
  endfunction