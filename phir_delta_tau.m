%Erreur dans la derniere somme ! Nombre complexe
function[valeur] = phir_delta_tau(delta,tau)

load constantes

  valeur = sum(n_i(1:7).*d_i(1:7).*t_i(1:7).*delta.^(d_i(1:7)-1).*tau.^(t_i(1:7)-1)) +...
           sum(n_i(8:34).*exp(-delta.^c_i(8:34)).*delta.^(d_i(8:34)-1).*t_i(8:34).*tau.^(t_i(8:34)-1).*(d_i(8:34)-c_i(8:34).*delta.^c_i(8:34))) +...
           sum(n_i(35:39).*delta.^(d_i(35:39)).*tau.^(t_i(35:39)).*exp(-alpha_i(35:39).*(delta-epsilon_i(35:39)).^2-beta_i(35:39).*(tau-gamma_i(35:39)).^2).*...
           (d_i(35:39)./delta-2.*alpha_i(35:39).*(delta-epsilon_i(35:39))).*(t_i(35:39)./tau-2.*beta_i(35:39).*(tau-gamma_i(35:39)))) +...
           sum(n_i(40:42).*(((DELTA(delta,tau)).^b_i(40:42)).*((-2.*D_i(40:42).*(tau-1).*(PSI(delta,tau) )))+...
           delta.*(4*C_i(40:42).*D_i(40:42).*(delta-1).*(tau-1).*(PSI(delta,tau) )))+...
           delta.*(b_i(40:42).*(DELTA(delta,tau)).^(b_i(40:42)-1).*((delta-1)  .*  ...
           (A_i(40:42).*((1-tau)+ A_i(40:42) .* (  ((delta-1).^2).^(  1./(2.*beta_i(40:42))  ) )).*...
            ( 2./beta_i(40:42) ).*( ((delta-1).^2).^((1./2.*beta_i(40:42))-1) ) + 2.*B_i(40:42).*a_i(40:42).*( (delta-1).^2 ).^(a_i(40:42)-1)    ))).*...
           (-2.*D_i(40:42).*(tau-1).*(PSI(delta,tau) ))+...
           (-2.*((1-tau)+ A_i(40:42) .* (  ((delta-1).^2).^(  1./(2.*beta_i(40:42))  ) )).* ...
           b_i(40:42).*(DELTA(delta,tau)).^(b_i(40:42)-1)).*((PSI(delta,tau) ))+delta.*(-2.*C_i(40:42).*(delta-1).*(PSI(delta,tau) ))+...
           (-A_i(40:42).*b_i(40:42).*(2./beta_i(40:42)).*(DELTA(delta,tau)).^(b_i(40:42)-1).*(delta-1).*(delta-1).^ ...
           (1./(2.*beta_i(40:42))-1) - 2.*((1-tau)+ A_i(40:42) .* (  ((delta-1).^2).^(  1./(2.*beta_i(40:42))  ) )).* ...
           b_i(40:42).*(b_i(40:42)-1).*(DELTA(delta,tau).^(b_i(40:42)-2).*((delta-1)  .*...
           (A_i(40:42).*((1-tau)+ A_i(40:42) .* (  ((delta-1).^2).^(  1./(2.*beta_i(40:42))  ) )).*( 2./beta_i(40:42) ).* ...
           ( ((delta-1).^2).^((1./2.*beta_i(40:42))-1) ) + 2.*B_i(40:42).*a_i(40:42).*( (delta-1).^2 ).^(a_i(40:42)-1)    ))).* ...
           delta.*(PSI(delta,tau)))) ;

end
