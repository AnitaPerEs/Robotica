function R = Rx(theta)
<<<<<<< HEAD
%Rx realiza una rotación en un ángulo theta en radianes con respecto al eje X

R = [sqrt(2)/4, -sqrt(2)*sqrt(3)/4, sqrt(2)/2;
     (sqrt(2)/8) + (3/4), (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), -sqrt(2)/4;
     (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), (3*sqrt(2)/8) + (1/4), sqrt(2)*sqrt(3)/4]
=======
% Rx realiza una rotación en un ángulo theta en radianes con respecto al eje X.
R = [1, 0, 0;
     0, cos(theta), -sin(theta);
     0, sin(theta), cos(theta)];
end
>>>>>>> c8394d135c41f1ea6722438fb963d210d34f6d64
