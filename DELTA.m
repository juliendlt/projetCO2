function[valeur]=DELTA(delta,tau)
    load('constantes.mat','A_i','beta_i','B_i','a_i')

    valeur = ((1-tau)+ A_i(40).*((delta-1).^2).^(1./(2.*beta_i(40)))).^2 + B_i(40).*((delta-1).^2).^a_i(40);

end