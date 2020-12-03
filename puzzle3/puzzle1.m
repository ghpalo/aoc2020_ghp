[height, width] = size(treemap);

j = 1;
down = [1 1 1 1 2];
over = [1 3 5 7 1];
trees = 0;

for i = 1:height
    if (treemap(i,j) == '#')
        trees = trees + 1;
    end
    j = mod((j + 3), width);
    if j == 0
        j = width;
    end
end