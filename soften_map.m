A = imread('biped_n.png');

A = double(A) / 255.0;

for i = 1:size(A, 1)
   for j = 1:size(A, 2)
      dir = A(i, j, :) * 2 - 1;
      
      dir = 0.5 * dir + 0.5 * reshape([0, 0, 1], 1, 1, 3);
      dir = dir / norm(reshape(dir, 3, 1, 1));
      A(i, j, :) = (dir + 1) / 2;
   end
end

A = uint8(A * 255.0);

imwrite(A, 'biped_n.soft.png', 'PNG');