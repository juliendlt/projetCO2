function[valeur]=PSI_delta_tau(delta,tau)
    load('constantes.mat','C_i','D_i')

    valeur=4*C_i(40)*D_i(40)*(delta-1)*(tau-1)*PSI(delta,tau);

    
end
