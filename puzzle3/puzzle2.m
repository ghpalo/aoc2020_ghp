[height, width] = size(treemap);

down = [1 1 1 1 2];
over = [1 3 5 7 1];
trees = zeros([5 1]);

for k = 1:5
    j = 1;
    for i = 1:down(k):height
        if (treemap(i,j) == '#')
            trees(k) = trees(k) + 1;
        end
        j = mod((j + over(k)), width);
        if j == 0
            j = width;
        end
    end
end

format long
P = prod(trees)