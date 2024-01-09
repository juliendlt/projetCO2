function[valeur]=PSI_tau_tau(delta,tau)
    load('constantes.mat','D_i')
    P1 = 2*D_i(40)*(tau-1)^2 -1;
    valeur=P1*2*D_i(40)*PSI(delta,tau);
end

