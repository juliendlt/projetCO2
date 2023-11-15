function[valeur] = phi0(delta,tau)
% Calcul de la fonction phi_0 qui rend compte du comportement partiel du gaz comme gaz parfait

%Définition de vecteurs de constantes pour calculer phi0 (valeurs dans la table 27 du PDF)
a_0 = [8.37304456 , -3.70454304 , 2.50000000 , 1.99427042 , 0.62105248 , 0.41195293, 1.04028922 , 0.08327678] ;
theta_0 = [0 , 0 , 0 , 3.15163 , 6.11190 , 6.77708 , 11.32384 , 27.08792];

  valeur = log(delta) + a_0(1) + a_0(2).*tau + a_0(3).*log(tau) + sum(a_0(4:8).*log(1-exp(-theta_0(4:8).*tau)));
end