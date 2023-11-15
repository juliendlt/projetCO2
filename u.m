function[energie] = u(delta,tau)
    energie= R.*Tc.*(phi0_tau(delta,tau) + phir_tau(delta,tau));
end
