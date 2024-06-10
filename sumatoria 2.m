% Función principal
function main()
    % Pedir al usuario que ingrese un valor
    N = input('Ingrese el valor de N: ');

    % Crear un vector de 0 a N
    vector_n = 0:N;

    % Crear un segundo vector con los valores 1/((2n+1)(2n+2))
    vector_sum = 1 ./ ((2 * vector_n + 1) .* (2 * vector_n + 2));

    % Calcular la sumatoria de los valores del segundo vector
    sumatoria = sum(vector_sum);

    % Calcular el valor de ln(2)
    theoretical_value = log(2);

    % Mostrar los resultados
    fprintf('La sumatoria de 1/((2n+1)(2n+2)) desde n=0 hasta N=%d es: %.15f\n', N, sumatoria);
    fprintf('El valor teórico de ln(2) es: %.15f\n', theoretical_value);
    fprintf('La diferencia entre ambos valores es: %.15f\n', abs(theoretical_value - sumatoria));
end

% Ejecutar la función principal
main();

