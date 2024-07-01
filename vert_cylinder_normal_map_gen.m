size = [41, 167, 3];

map = zeros(size);

for pixelY = 1:size(1)
    y = -((pixelY - 0.5) / size(1) * 2 - 1);
    z = sqrt(1 - y * y);
    vec = permute([0, y, z], [1 3 2]);
    map(pixelY, :, :) = repmat(vec / 2.0 + 0.5, 1, size(2), 1);
end

gcf;
imagesc(map);

imwrite(map, 'map.png', 'PNG');