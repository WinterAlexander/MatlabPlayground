A = imread('map1.png');
B = imread('map2.png');

if size(A, 1) ~= size(B, 1) || size(A, 2) ~= size(B, 2)
    disp('Error invalid sizes');
end

A = double(A) / 255.0;
B = double(B) / 255.0;

C = A;

for i = 1:size(A, 1)
   for j = 1:size(A, 2)
      dirA = A(i, j, :) * 2 - 1;
      dirB = B(i, j, :) * 2 - 1;
      
      dir = dirA + dirB * 0.2;
      dir = dir / norm(reshape(dir, 3, 1, 1));
      
      C(i, j, :) = (dir + 1) / 2;
   end
end

C = uint8(C * 255.0);

imwrite(C, 'merged.png', 'PNG');