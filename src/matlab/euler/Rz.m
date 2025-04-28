function R = Rz(theta)
<<<<<<< HEAD
%Rz realiza una rotación en un ángulo theta en radianes con respecto al eje z

R = [sqrt(2)/4, -sqrt(2)*sqrt(3)/4, sqrt(2)/2;
     (sqrt(2)/8) + (3/4), (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), -sqrt(2)/4;
     (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), (3*sqrt(2)/8) + (1/4), sqrt(2)*sqrt(3)/4]
=======
% Rz realiza una rotación en un ángulo theta en radianes con respecto al eje Z.
R = [cos(theta), -sin(theta), 0;
     sin(theta), cos(theta), 0;
     0, 0, 1];
end
>>>>>>> c8394d135c41f1ea6722438fb963d210d34f6d64
