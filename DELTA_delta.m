function [valeur] = DELTA_delta(delta,tau)
    load('constantes.mat','A_i','a_i','beta_i','B_i')
    C1 = ((delta-1)^2)^(1/(2*beta_i(40))-1);
    C2 = ((delta-1)^2)^(a_i(40)-1);

    valeur = (delta-1)*(A_i(40)*THETA(delta,tau)*2/beta_i(40)*C1+2*B_i(40)*a_i(40)*C2) ;
end

