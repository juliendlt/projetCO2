function[valeur]=PSI_delta_delta(delta,tau)
    load('constantes.mat','C_i')
    P1 = 2*C_i(40)*(delta-1)^2 -1;
    valeur=P1*2*C_i(40)*PSI(delta,tau);

end

