function arm_plot(angles, lengths)
    hold on;
    x = 0;
    y = 0;
    for i = 1:size(lengths, 2)
        len = lengths(i);
        ang = angles(i);
        u = cos(ang) * len;
        v = sin(ang) * len;
        line([x, x + u], [y, y + v], 'Color', colorId(i), 'LineWidth', 5);
        x = x + u;
        y = y + v;
    end
    hold off;
end