function R = Ry(theta)
<<<<<<< HEAD
%Ry realiza una rotación en un ángulo theta en radianes con respecto al eje y

R = [sqrt(2)/4, -sqrt(2)*sqrt(3)/4, sqrt(2)/2;
     (sqrt(2)/8) + (3/4), (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), -sqrt(2)/4;
     (sqrt(3)/4) - (sqrt(2)*sqrt(3)/8), (3*sqrt(2)/8) + (1/4), sqrt(2)*sqrt(3)/4]
=======
% Ry realiza una rotación en un ángulo theta en radianes con respecto al eje Y.
R = [cos(theta), 0, sin(theta);
     0, 1, 0;
     -sin(theta), 0, cos(theta)];
end
>>>>>>> c8394d135c41f1ea6722438fb963d210d34f6d64
