function[valeur]=DELTAbi_tau(delta,tau,bi)

    valeur=-2.*THETA(delta,tau).*bi.*DELTA(delta,tau).^(bi-1);
    
end

