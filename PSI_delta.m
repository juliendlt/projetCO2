function[valeur]=PSI_delta(delta,tau)
    load('constantes.mat','C_i')

    valeur= -2*C_i(40)*(delta-1)*PSI(delta,tau);

end


