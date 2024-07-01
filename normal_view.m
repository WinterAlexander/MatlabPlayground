A = flipud(imread('normal.png'));
gcf;
hold on;
axis equal;
imagesc(A);
      
stepSize = 2;

A = double(A) / 255.0;

dirs = A(1:stepSize:size(A, 1), 1:stepSize:size(A, 2), 1:2) * 2 - 1;
x = repmat(1:stepSize:size(A, 2), size(1:stepSize:size(A, 1), 2), 1);
y = repmat(1:stepSize:size(A, 1), size(1:stepSize:size(A, 2), 2), 1)';

quiver(x, y, dirs(:, :, 1), dirs(:, :, 2), 'Color', 'white');