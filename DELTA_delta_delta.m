function [valeur] = DELTA_delta_delta(delta,tau)
    load('constantes.mat','B_i','a_i','A_i','beta_i')

    S1 = 1/(delta-1)*DELTA_delta(delta,tau);

    S21 = 4*B_i(40)*a_i(40)*(a_i(40)-1)*((delta-1)^2)^(a_i(40)-2);
    S22 = 2*A_i(40)^2*(1/beta_i(40))^2*(((delta-1)^2)^(1/(2*beta_i(40))-1))^2;
    S23 = A_i(40)*THETA(delta,tau)*4/beta_i(40)*(1/(2*beta_i(40))-1)*((delta-1)^2)^(1/(2*beta_i(40))-2);
    S2 = (delta-1)^2*(S21 +S22+S23);

    valeur = S1+S2;
end

