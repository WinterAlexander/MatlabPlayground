function pos = fk_solve(angles, lengths)
    x = 0;
    y = 0;
    for i = 1:size(lengths, 2)
        len = lengths(i);
        ang = angles(i);
        u = cos(ang) * len;
        v = sin(ang) * len;
        x = x + u;
        y = y + v;
    end
    pos = [x, y];
end