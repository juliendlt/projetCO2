function[grandeur] = main(T,rho)

load constantes;

delta =  rho./rhoc;
tau = Tc./T;

grandeur= u(delta,tau);

end
