function ik()
    angles = [0, 0, 0];
    lengths = [5, 5, 5];

    f = figure();
    set(f, 'KeyPressFcn', @onKeyPressed);

    dest = [0, 1];

    while 1   
        cla;
        plot(dest(1), dest(2), 'Marker', '+')
        angles = ik_solve(lengths, angles, dest);
        arm_plot(angles, lengths);
        axis([-10, 10, -10, 10]);
        axis square;
        drawnow;


    end

    function onKeyPressed(src, event)
        if event.Key == 'd'
            dest = dest + [0.1, 0];
        elseif event.Key == 'a'
            dest = dest - [0.1, 0];
        elseif event.Key == 'w'
            dest = dest + [0, 0.1];
        elseif event.Key == 's'
            dest = dest - [0, 0.1];
        end
    end
end
