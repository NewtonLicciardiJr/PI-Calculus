% 
% Sygestão para Implementação do Algoritmo de Chudnovsky
% para calculo do PI
% observem como o PI converge rapido para o limite de presicao do Matlab


n= 2 %iterações
pic=zeros(n,1);
erro=zeros(n,1);
%valores iniciais
C = 426880*(10005)^(1/2);
M=1;
L=13591409;
X=1;
Termo=M*L/X;
soma=Termo;
for k=1:n
M= M*(12*k+2)*(12*k+6)*(12*k+10)/(k+1)^3;
L= L + 545140134;
X= X*(-262537412640768000);
Termo=M*L/X;
pic(k)=C*soma^(-1);
erro(k)=abs(pi-pic(k));
soma=soma+Termo;
end
figure(1);
clf;
plot (pic);
hold on;
plot (erro);
hold off;
title(sprintf(' Calculo PI %f - serie rapida e Erro %f', pic(n), erro(n)));