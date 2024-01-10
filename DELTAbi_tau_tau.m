function[valeur]=DELTAbi_tau_tau(delta,tau,bi)

    valeur=2.*bi.*DELTA(delta,tau).^(bi-1)+4.*THETA(delta,tau).^2.*bi.*(bi-1).*DELTA(delta,tau).^(bi-2);
    
end