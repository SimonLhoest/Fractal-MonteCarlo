%On simule aléatoirement le vecteur
N=1000;
A=rand(1,N);
O=rand(1,N);
AO=[A;O];


%On assimile cela à un vecteur T
F=-AO(1,:).^2+1;    %On définit F
Y=F;
T=O<-AO(1,:).^2+1;  %On effectue notre masquage logique
D=sum(T);            %On calcule le nombre de points dans le domaine
I=D/N;


%On crée deux listes, une pour récupérer les points à l'intérieur et
%l'autre à l'extérieur du domaine
O2=zeros(1,N);  
O3=zeros(1,N);
for n=1:N
    if T(n)==1
    O2(n)=AO(2,n) ;
    else
    O3(n)=AO(2,n);
    end
end

%On trace la courbe
X=linspace(0,1,100);
plot(X,-X.^2+1,'-k'); 

%On place les points et on assimile la couleur sur le graphique
for n=1:N
if O2(n)~= 0
    hold on;
    plot(A(n),O2(n), '.b');
end

if O3(n)~= 0
    hold on;
    plot(A(n),O3(n), '.r');   %Pour tracer les points
end
end







