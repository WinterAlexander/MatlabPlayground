A = imread('key.png');

A = double(A) / 255.0;

for i = 1:size(A, 1)
   for j = 1:size(A, 2)
      dir = A(i, j, :) * 2 - 1;
      
      x = dir(:, :, 1);
      dir(:, :, 1) = -dir(:, :, 2);
      dir(:, :, 2) = x;
      
      A(i, j, :) = (dir + 1) / 2;
   end
end

A = uint8(A * 255.0);

imwrite(A, 'key_rotated.png', 'PNG');