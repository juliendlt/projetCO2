function[valeur] = cp(delta,tau)

load('constantes.mat','R');
  
S1 = tau.^2.*(phi0_tau_tau(delta,tau)+phir_tau_tau(delta,tau));
Numerateur = (1+delta.*phir_delta(delta,tau)-delta.*tau.*phir_delta_tau(delta,tau)).^2;
denominateur = 1+2.*delta.*phir_delta(delta,tau)+delta.^2.*phir_delta_delta(delta,tau);

valeur = -R.*(S1+Numerateur/denominateur);

end


