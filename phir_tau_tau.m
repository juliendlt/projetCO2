function[valeur] = phir_tau_tau(delta,tau)

load('constantes.mat','n_i','t_i','d_i','c_i','alpha_i','epsilon_i','beta_i','gamma_i','b_i')
 
S1 = sum(n_i(1:7).*t_i(1:7).*(t_i(1:7)-1).*delta.^(d_i(1:7)).*tau.^(t_i(1:7)-2));

S2 = sum(n_i(8:34).*t_i(8:34).*(t_i(8:34)-1).*delta.^(d_i(8:34)).*tau.^(t_i(8:34)-2).*exp(-delta.^c_i(8:34)));

e3 = @(i) -alpha_i(i).*(delta-epsilon_i(i)).^2-beta_i(i).*(tau-gamma_i(i)).^2;
P31 = @(i) n_i(i).*delta.^(d_i(i)).*tau.^(t_i(i)).*exp(e3(i));
P32 = @(i) (t_i(i)./tau-2.*beta_i(i).*(tau-gamma_i(i))).^2-t_i(i)./(tau).^2-2.*beta_i(i);
S3 = sum(P31(35:39).*P32(35:39));

S41 = @(i) DELTAbi_tau_tau(delta,tau,b_i(i)).*PSI(delta,tau);
S42 = @(i) 2*DELTAbi_tau(delta,tau,b_i(i)).*PSI_tau(delta,tau);
S43 = @(i) DELTA(delta,tau).^b_i(i).*PSI_tau_tau(delta,tau);
S4 = sum(n_i(40:42).*delta.*(S41(40:42) + S42(40:42) + S43(40:42)));

valeur = S1+S2+S3+S4 ; 
   
end
