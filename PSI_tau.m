function[valeur]=PSI_tau(delta,tau)
    load('constantes.mat','D_i')

    valeur=-2*D_i(40)*(tau-1)*PSI(delta,tau);

end


