function[entropie] = s(delta,tau)
load constantes
    entropie = R.*(tau.*(phi0_tau(delta,tau)+phir_tau(delta,tau)) - phi0(delta,tau) - phir(delta,tau));
end