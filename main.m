function[grandeur] = main(rho,T)

load constantes
delta = rho/rhoc;
tau = Tc/T;
grandeur=[p(delta,tau), u(delta,tau),s(delta,tau),cv(delta,tau),cp(delta,tau)]

end
