function[grandeur] = main(T,rho)

load('constantes.mat','rhoc','Tc');

delta =  rho./rhoc;
tau = Tc./T;

grandeur= phir_tau(delta,tau);

end

