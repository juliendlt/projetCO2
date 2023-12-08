function[grandeur] = main(T,rho)

load('constantes.mat','rhoc','Tc');

delta =  rho./rhoc;
tau = Tc./T;

grandeur= DELTA_delta_delta(delta,tau);

end

