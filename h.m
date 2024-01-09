function[h] = h(delta,tau)
load('constantes.mat','R','Tc');

  h = R*Tc/tau*(1 + tau*(phi0_tau(delta,tau)+phir_tau(delta,tau))+delta*phir_delta(delta,tau));
end

