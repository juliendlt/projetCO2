function[grandeur] = main(T,rho)

load('constantes.mat','rhoc','Tc');

delta =  rho./rhoc;
tau = Tc./T;

grandeur= s(delta,tau);

end

