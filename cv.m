function[Cv] = cv(delta,tau)
load constantes
  Cv = -R.*tau.^2.*(phi0_tau_tau(delta,tau)+phir_tau_tau(delta,tau));
end