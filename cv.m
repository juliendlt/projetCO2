function[Cv] = cv(delta,tau)
load constantes
  Cv = -R.*tau.^2.*(phi0_delta_delta(delta,tau)+phir_delta_delta(delta,tau));
end