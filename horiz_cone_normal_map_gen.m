size = [91, 81, 3];

map = zeros(size);

for pixelX = 1:size(2)
    for pixelY = 1:size(1)
        width = pixelY / size(1) * size(2);
        x = (((pixelX - 0.5) * 2 - size(2)) / width);
        
        if x * x > 1
            vec = permute([0, 0, 0], [3 2 1]);
        else
            z = sqrt(1 - x * x);
            vec = permute([x, 0, z], [3 2 1]);
        end
        map(pixelY, pixelX, :) = vec / 2.0 + 0.5;
    end
end

gcf;
imagesc(map);

imwrite(map, 'map.png', 'PNG');