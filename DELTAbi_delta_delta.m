function[valeur]=DELTAbi_delta_delta(delta,tau,bi)

    S1 = DELTA(delta,tau).^(bi-1).*DELTA_delta_delta(delta,tau);
    S2 = (bi-1).*DELTA(delta,tau).^(bi-2).*DELTA_delta(delta,tau).^2;
    
    valeur=bi.*(S1+S2);
    
end

