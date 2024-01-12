function[valeur]=THETA(delta,tau)
    load('constantes.mat','beta_i','A_i');

    e1 = 1./(2.*beta_i(40));
    P1 = (delta-1).^2;
    valeur=(1-tau)+ A_i(40).*P1.^e1;

end