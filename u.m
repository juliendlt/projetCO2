function[energie] = u(delta,tau)
load('constantes.mat','R','Tc');
    energie= R.*Tc.*(phi0_tau(delta,tau) + phir_tau(delta,tau));
end
