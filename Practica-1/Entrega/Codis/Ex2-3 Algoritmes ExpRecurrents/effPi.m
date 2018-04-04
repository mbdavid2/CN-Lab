%% Pi efficient
function [ pi_val ] = effPi(kMax)
k = 1;
m = 0;
nMax = 7^kMax;
    for i = 1:nMax
        x = rand(1,1);
        y = rand(1,1);

        r = x^2+y^2;
        % If x^2 + y^2 is less than or equal to 1,
        % then the point given by x,y is inside the quadrant.
        if (r <= 1)
                m = m + 1;
        end
        ex = 7^k;
        if (i == ex) 
            pi_val = (4*m)/i;
            errAbs = abs(pi-pi_val);
            errRel = errAbs/pi;
            disp([num2str(i), '; ', num2str(pi_val,'%6f'), '; ', num2str(errAbs,'%6f'), '; ', num2str(errRel,'%6f')]);
            k = k + 1;
        end
    end   
end