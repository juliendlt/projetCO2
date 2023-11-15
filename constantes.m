%Fichier.mat des coefficients constants pour le calcul de phi résiduelle tableau 30 du doc Spawn Wagner PDF
%Ces paramètres sont rangés dans des vecteurs colonnes de taille 42
n_i=[0.38856823203161,0.29385475942740e1,-0.55867188534934e1,-0.76753199592477,0.31729005580416,0.54803315897767,0.12279411220335,...
    0.21658961543220e1,0.15841735109724e1,-0.23132705405503,0.58116916431436e-1,-0.55369137205382,0.48946615909422,-0.24275739843501e-1,...
    0.62494790501678e-1,-0.12175860225246,-0.37055685270086,-0.16775879700426e-1,-0.11960736637987,-0.45619362508778e-1,0.35612789270346e-1,...
    -0.74427727132052e-2,-0.17395704902432e-2,-0.21810121289527e-1,0.24332166559236e-1,-0.37440133423463e-1,0.14338715756878,-0.13491969083286,...
    -0.23151225053480e-1,0.12363125492901e-1,0.21058321972940e-2,-0.33958519026368e-3,0.55993651771592e-2,-0.30335118055646e-3,-0.21365488688320e3,...
    0.26641569149272e5,-0.24027212204557e5,-0.28341603423999e3,0.21247284400179e3,-0.66642276540751,0.72608632349897,0.55068668612842e-1];

d_i=[1,1,1,1,2,2,3,1,2,4,5,5,5,6,6,6,1,1,4,4,4,7,8,2,3,3,5,5,6,7,8,10,4,8,2,2,2,3,3,0,0,0];

t_i=[0.00,0.75,1.00,2.00,0.75,2.00,0.75,1.50,1.50,2.50,0.00,1.50,2.00,0.00,...
    1.00,2.00,3.00,6.00,3.00,6.00,8.00,6.00,0.00,7.00,12.00,16.00,22.00,24.00,...
    16.00,24.00,8.00,2.00,28.00,14.00,1.00,0.00,1.00,3.00,3.00];

c_i=[0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,4,4,4,4,4,4,5,6];

a_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3.500,3.500,3.000];

b_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.875,0.925,0.875];

alpha_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,25,25,15,20,0,0,0];

beta_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,325,300,300,275,275,0.300,0.300,0.300];

gamma_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.16,1.19,1.19,1.25,1.22];

epsilon_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.00,1.00,1.00,1.00,1.00];

A_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.700,0.700,0.700];

B_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.3,0.3,1.0];

C_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10.0,10.0,12.5];

D_i=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,275,275,275];

a_i_psat=[-7.0602087,1.9391218,-1.6463597,-3.2995634]

t_i_psat=[1.0,1.5,2.0,4.0]

Masse_molaire=44.009; % g/mol

% Constante gazs parfaits spécifique
R=0.1889241; % kJ/(kg K) 

% Température critique
Tc=304.1282; % K

pc=7377300; % Pa

% Masse volumique critique
rhoc=467.6; % kg/m3

% Enthalpie critique
hc = -174.53 % kJ/kg

% Entropie critique
sc = -1.3054 % kJ/kg*K

Tt=216.592; % K

pt=517950; % Pa

T0=298.15; % K

p0=101325; %Pa

h0=0; % kJ/kg

s0=0; % kJ/(kg K)

save constantes.mat n_i a_i b_i c_i t_i d_i alpha_i beta_i gamma_i epsilon_i A_i B_i C_i D_i...
    Masse_molaire R Tc pc rhoc Tt pt T0 p0 h0 s0 a_i_psat t_i_psat;

