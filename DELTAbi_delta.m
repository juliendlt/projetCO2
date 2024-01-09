function[valeur]=DELTAbi_delta(delta,tau,bi)

    valeur=bi.*DELTA(delta,tau).^(bi-1).*DELTA_delta(delta,tau);
    
end


