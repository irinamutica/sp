function x = redresare_ma(x)
    for index = 1 : 1 : length(x)
        if x(index) < 0
            x(index) = 0;
        end
    end