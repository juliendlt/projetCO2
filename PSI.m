function[valeur]=PSI(delta,tau)
    load constantes

    valeur=exp(-C_i(40).*(delta-1).^2 - D_i(40).*(tau-1).^2);