%Nombre de pixels 
d=100;

%On crée les points aléatoirement
a=linspace(-2,1,d);
b=linspace(1.5,-1.5,d).';
c=[a+1i*b];

z=zeros(d,d); %On initialise à 0 notre matrice Z
for n=1:150   %On crée la fonction et on la fait varier pour des valeurs entre 1 et 150
   z=z.^2+c;
end

%On effectue notre masquage logique
ML=abs(z)>2;
ML2=ML*255;

%On affiche notre image
ML2 = uint8(ML2);
imshow(ML2);










  