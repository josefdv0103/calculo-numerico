clc
clear
format long
x=2;
exata=1;
num=num1=1;
fat=fat1=1;
for i=1:1000
   num=num*x;
   fat=fat*i;
   exata=exata+(num/fat);
   i=i+1;
end
aprox=1;
erro=abs(exata-aprox);
i1=1;
while (erro>0.00001)
   num1=num1*x;
   fat1=fat1*i1;
   aprox=aprox+(num1/fat1)
   erro=abs(exata-aprox)
   pause
   i1=i1+1;
end
printf("\n")
exata
aprox
erro 
i1