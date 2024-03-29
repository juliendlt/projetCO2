function[valeur] = phir_tau(delta,tau)

load('constantes.mat','n_i','t_i','d_i','c_i','alpha_i','epsilon_i','beta_i','gamma_i','b_i')

 
S1 = sum(n_i(1:7).*t_i(1:7).*delta.^d_i(1:7).*tau.^(t_i(1:7)-1));
S2 = sum(n_i(8:34).*t_i(8:34).*delta.^d_i(8:34).*tau.^(t_i(8:34)-1).*exp(-delta.^(c_i(8:34))));

e3 = @(i) -alpha_i(i).*(delta-epsilon_i(i)).^2-beta_i(35:39).*(tau-gamma_i(i)).^2;
P31 = @(i) n_i(i).*delta.^d_i(i).*tau.^t_i(i).*exp(e3(i));
P32 = @(i) t_i(i)./tau-2.*beta_i(i).*(tau-gamma_i(i));
S3 = sum(P31(35:39).*P32(35:39));

S4 = sum(n_i(40:42).*delta.*(DELTAbi_tau(delta,tau,b_i(40:42)).*PSI(delta,tau) + DELTA(delta,tau).^b_i(40:42).*PSI_tau(delta,tau)));



valeur = S1+S2+S3+S4;
end
