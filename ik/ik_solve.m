function angles = ik_solve(lengths, dest)
    err = 1;
    
    while err > 0.1
        angles = rand(size(lengths)) * 2 * pi;
        curDest = fk_solve(angles, lengths);
        err = norm(curDest - dest);
    end
end