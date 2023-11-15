function[valeur] = phi0_tau(~,tau)

%Définition de vecteurs de constantes pour calculer phi0 (valeurs dans la table 27 du PDF)

a_0 = [8.37304456 , -3.70454304 , 2.50000000 , 1.99427042 , 0.62105248 , 0.41195293, 1.04028922 , 0.08327678] ;
theta_0 = [0 , 0 , 0 , 3.15163 , 6.11190 , 6.77708 , 11.32384 , 27.08792];

  valeur = a_0(2) + a_0(3)./tau + sum(a_0(4:8).*theta_0(4:8).*(1./(1-exp(-theta_0(4:8).*tau))-1));
end
