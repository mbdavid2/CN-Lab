%% Calcul Pi
function [ pi_val ] = pi_alg(n)
    m = 0;
    for i = 1:n
        x = rand(1,1);
        y = rand(1,1);

        r = x^2+y^2;
        % If x^2 + y^2 is less than or equal to 1,
        % then the point given by x,y is inside the quadrant.
        if (r <= 1)
                m = m + 1;
        end
    end   
    pi_val = (4*m)/n;
    errAbs = abs(pi-pi_val);
    errRel = errAbs/pi*100;
    % disp(['n: ', num2str(n), ', Pi value: ', num2str(pi_val,'%6f'), ', Absolute Error: ', num2str(errAbs,'%6f'), ', Relative Error: ', num2str(errRel,'%6f')]);
    disp([num2str(n), '; ', num2str(pi_val,'%6f'), '; ', num2str(errAbs,'%6f'), '; ', num2str(errRel,'%6f')]);
end