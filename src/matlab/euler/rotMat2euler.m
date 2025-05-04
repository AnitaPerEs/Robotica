function euler = rotMat2euler(R, secuencia)
% rotMat2euler Convierte una matriz de rotación a ángulos de Euler.
% R: matriz de rotación 3x3
% secuencia: string como "XYZ"

if strcmp(secuencia, "XYZ")
    % Convención XYZ:
    % R = Rx(phi) * Ry(theta) * Rz(psi)
    phi   = atan2(-R(2,3), R(3,3));  % rotación alrededor de X
    theta = asin(R(1,3));           % rotación alrededor de Y
    psi   = atan2(-R(1,2), R(1,1)); % rotación alrededor de Z
    euler = [phi; theta; psi];
else
    error('Secuencia no soportada. Usa "XYZ".');
end
end

