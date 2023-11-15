function[valeur] = phir(delta,tau)

load constantes

valeur = sum(n_i(1:7).*delta.^(d_i(1:7)).*tau.^(t_i(1:7))) +...
    sum(n_i(8:34).*delta.^(d_i(8:34)).*tau.^(t_i(8:34)).*exp(-delta.^(c_i(8:34)))) +...
    sum(n_i(35:39).*delta.^(d_i(35:39)).*tau.^(t_i(35:39)).*exp(-alpha_i(35:39).*(delta-epsilon_i(35:39)).^2-beta_i(35:39).*(tau-gamma_i(35:39)).^2)) +...
    sum(n_i(40:42).*DELTA(delta,tau).^b_i(40:42).*delta.*PSI(delta,tau));

end
