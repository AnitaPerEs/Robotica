function euler = rotMat2euler(R, secuencia)
    %rotMat2euler Convierte una matriz de rotación a la orientación en ángulos de Euler.
    
    % Verificar que la secuencia es válida
    if secuencia ~= "XYZ"
        error("Secuencia no soportada. Usa 'XYZ'.");
    end
    
    % Cálculo de ángulos de Euler
    theta = asin(-R(3,1));  % Rotación alrededor de Y
    
    if cos(theta) > 1e-6  % Para evitar divisiones por cero
        phi = atan2(R(3,2), R(3,3));  % Rotación alrededor de X
        psi = atan2(R(2,1), R(1,1));  % Rotación alrededor de Z
    else
        phi = 0;
        psi = atan2(-R(1,2), R(2,2));
    end

    % Convertir a grados
    euler = rad2deg([phi; theta; psi]);
end

function euler = rotMat2euler(R, secuencia)
%rotMat2euler Convierte una matriz de rotación a la orientación en ángulos de Euler.
%
% Ejemplo de uso:
% R = [-1 0 0
%       0 0 1
%       0 1 0];
% secuencia = "XYZ"
% euler = rotMat2euler(R, secuencia)

% Obtén las ecuaciones de la imagen
if secuencia == "XYZ"
    phi =       % phi:   rotación alrededor del eje X
    theta =     % theta: rotación alrededor del eje Y
    psi =       % psi:   rotación alrededor del eje Z
    euler = [phi;theta;psi];
end

