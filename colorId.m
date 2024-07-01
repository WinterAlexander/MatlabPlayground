function c = colorId(i)
    i = mod(i - 1, 7) + 1;

    if i == 1
        c = [0 0.4470 0.7410];
    elseif i == 2
        c = [0.8500 0.3250 0.0980];
    elseif i == 3
        c = [0.9290 0.6940 0.1250];
    elseif i == 4
        c = [0.4940 0.1840 0.5560];
    elseif i == 5
        c = [0.4660 0.6740 0.1880];
    elseif i == 6
        c = [0.3010 0.7450 0.9330];
    elseif i == 7
        c = [0.6350 0.0780 0.1840];
    end
end

