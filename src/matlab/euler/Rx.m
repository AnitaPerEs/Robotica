function R = Rx(theta)
%Rx realiza una rotación en un ángulo theta en radianes con respecto al eje X

R = [sqrt(2)/4, -sqrt(2)*sqrt(3)/4, sqrt(2)/2;
     (sqrt(2)/8) + (3/4), (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), -sqrt(2)/4;
     (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), (3*sqrt(2)/8) + (1/4), sqrt(2)*sqrt(3)/4]