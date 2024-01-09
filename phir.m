function[valeur] = phir(delta,tau)

load('constantes.mat','n_i','t_i','d_i','c_i','alpha_i','epsilon_i','beta_i','gamma_i','b_i')

    S1 = sum(n_i(1:7).*delta.^(d_i(1:7)).*tau.^(t_i(1:7)));
    
    S2 = sum(n_i(8:34).*delta.^(d_i(8:34)).*tau.^(t_i(8:34)).*exp(-delta.^(c_i(8:34)))) ;
    
    e3 = @(i) -alpha_i(i).*(delta-epsilon_i(i)).^2-beta_i(i).*(tau-gamma_i(i)).^2;
    S3 = sum(n_i(35:39).*delta.^(d_i(35:39)).*tau.^(t_i(35:39)).*exp(e3(35:39))) ;
  
    S4 = sum(n_i(40:42).*DELTA(delta,tau).^b_i(40:42).*delta.*PSI(delta,tau));

    valeur = S1+S2+S3+S4;

end
