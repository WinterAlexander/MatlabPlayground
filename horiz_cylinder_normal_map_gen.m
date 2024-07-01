size = [93, 19, 3];

map = zeros(size);

for pixelX = 1:size(2)
    x = ((pixelX - 0.5) / size(2) * 2 - 1);
    z = sqrt(1 - x * x);
    vec = permute([x, 0, z], [3 2 1]);
    map(:, pixelX, :) = repmat(vec / 2.0 + 0.5, size(1), 1, 1);
end

gcf;
imagesc(map);

imwrite(map, 'map.png', 'PNG');