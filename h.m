function[Cp] = cp(delta,tau)

load constantes
  Cp = -R.*tau.*tau.*(phi0_delta_delta(delta,tau)+phir_delta_delta(delta,tau))
  +(1+delta.*phir_delta(delta,tau)-delta.*tau.*phir_delta_tau(delta,tau)).^2./
  (1+2.*delta.*phir_delta(delta,tau)+delta.^2.*phir_delta_delta(delta,tau));

end