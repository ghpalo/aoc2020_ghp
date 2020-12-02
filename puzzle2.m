valid = 0;
for i = 1:size(strs)
    min = str2double(string(regexp(strs(i),'(\d+)-','tokens')));
    max = str2double(string(regexp(strs(i),'-(\d+)','tokens')));
    letterneeded = char(string(regexp(strs(i),'(\w):','tokens')));
    str = char(string(regexp(strs(i),':\s(\w+)','tokens')));
    
    if (((str(min)==letterneeded) && (str(max)~=letterneeded)) || ... 
            ((str(min)~=letterneeded) && (str(max)==letterneeded)))
        valid = valid + 1;
    end
end