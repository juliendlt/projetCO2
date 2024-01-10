%Erreur dans la derniere somme ! Nombre complexe
function[valeur] = phir_delta_tau(delta,tau)

load('constantes.mat','n_i','t_i','d_i','c_i','alpha_i','epsilon_i','beta_i','gamma_i','b_i')

  
S1 = sum(n_i(1:7).*d_i(1:7).*t_i(1:7).*delta.^(d_i(1:7)-1).*tau.^(t_i(1:7)-1));
S2 =  sum(n_i(8:34).*exp(-delta.^c_i(8:34)).*delta.^(d_i(8:34)-1).*t_i(8:34).*tau.^(t_i(8:34)-1).*(d_i(8:34)-c_i(8:34).*delta.^c_i(8:34)));

e3 = @(i) -alpha_i(i).*(delta-epsilon_i(i)).^2-beta_i(i).*(tau-gamma_i(i)).^2;
P31 = @(i) n_i(i).*delta.^(d_i(i)).*tau.^(t_i(i)).*exp(e3(i));
P32 = @(i) d_i(i)./delta-2.*alpha_i(i).*(delta-epsilon_i(i));
P33 = @(i) t_i(i)./tau-2.*beta_i(i).*(tau-gamma_i(i));
S3 = sum(P31(35:39).*P32(35:39).*P33(35:39));

S41 = @(i) DELTA(delta,tau).^b_i(i).*(PSI_tau(delta,tau)+delta.*PSI_delta_tau(delta,tau));
S42 = @(i) delta.*DELTAbi_delta(delta,tau,b_i(i)).*PSI_tau(delta,tau);
S43 = @(i) DELTAbi_tau(delta,tau,b_i(i)).*(PSI(delta,tau)+delta.*PSI_delta(delta,tau));
S44 = @(i) DELTAbi_delta_tau(delta,tau,b_i(i)).*delta.*PSI(delta,tau);

S4 = sum(n_i(40:42).*(S41(40:42)+S42(40:42)+S43(40:42)+S44(40:42)));
          
valeur =  S1+S2+S3+S4;

end
