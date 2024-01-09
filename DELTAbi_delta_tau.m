function[valeur]=DELTAbi_delta_tau(delta,tau,bi)
    load('constantes.mat','A_i','beta_i');
    
    P11 = -A_i(40).*bi.*2./beta_i(40).*DELTA(delta,tau).^(bi-1).*(delta-1);
    e12 = 1./(2.*beta_i(40))-1;
    P12 = ((delta-1).^2).^e12;
    S1 = P11.*P12;
    S2 = -2.*THETA(delta,tau).*bi.*(bi-1).*DELTA(delta,tau).^(bi-2).*DELTA_delta(delta,tau);

    valeur=S1+S2;
    
end
