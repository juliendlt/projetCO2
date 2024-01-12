function[valeur]=DELTA(delta,tau)
    load('constantes.mat','B_i','a_i')

    valeur = THETA(delta,tau).^2 + B_i(40).*((delta-1).^2).^a_i(40);

end