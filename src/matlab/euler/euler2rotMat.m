function R = euler2rotMat(euler, secuencia)
%euler2rotMat Convierte la orientación en ángulos de Euler en una matriz de rotación.
%
% Parámetros de entrada:
% euler: Vector de ángulos de Euler [phi; theta; psi] en radianes
% secuencia: Cadena que define el orden de rotaciones, por ejemplo "XYZ"
% Extraer los ángulos de Euler
phi = euler(1);      % Rotación alrededor del eje X
theta = euler(2);    % Rotación alrededor del eje Y
psi = euler(3);      % Rotación alrededor del eje Z

% Matrices de rotación básicas
Rx = [1, 0, 0;
      0, cos(phi), -sin(phi);
      0, sin(phi), cos(phi)];

Ry = [cos(theta), 0, sin(theta);
      0, 1, 0;
      -sin(theta), 0, cos(theta)];

Rz = [cos(psi), -sin(psi), 0;
      sin(psi), cos(psi), 0;
      0, 0, 1];

 %Calcular la matriz de rotación dependiendo de la secuencia
if secuencia == "XYZ"
   R = Rx*Ry*Rz; % Aplicar la rotación en el orden correcto
else
    error('Secuencia no soportada. Usa "XYZ".');
end



