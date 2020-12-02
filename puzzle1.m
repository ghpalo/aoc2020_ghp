valid = 0;
for i = 1:size(strs)
    min = str2double(string(regexp(strs(i),'(\d+)-','tokens')));
    max = str2double(string(regexp(strs(i),'-(\d+)','tokens')));
    letterneeded = char(string(regexp(strs(i),'(\w):','tokens')));
    str = char(string(regexp(strs(i),':\s(\w+)','tokens')));
    
    num = 0;
    for j = 1:strlength(str)
        if str(j) == letterneeded
            num = num + 1;
        end
    end
    
    if((num >= min) && (num <= max))
        valid = valid + 1;
    end
end