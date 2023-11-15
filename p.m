function[pression] = p(delta,tau)
load constantes
  pression = (rhoc.*delta.*R.*Tc./tau).*(1+delta.*phir_delta(delta,tau));
end