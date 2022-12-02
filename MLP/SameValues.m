function [num_each] = SameValues(data, attributes)
%   FUNCTION that returns the amount of same values in a column array

tam = size(data);
size_att = size(attributes);
num_each = zeros(1,size_att(1,2));

for i=1:tam
    if strcmp(data{i,1},attributes(1)) || data{i,1} == attributes(1)
        num_each(1,1) = num_each(1,1) + 1;
    elseif strcmp(data{i,1},attributes(2)) || data{i,1} == attributes(2)
        num_each(1,2) = num_each(1,2) + 1; 
    end
    if size_att(1,2) >= 3
        if strcmp(data{i,1},attributes(3)) || data{i,1} == attributes(3)
            num_each(1,3) = num_each(1,3) + 1;
        end
    end
    if size_att(1,2) == 4
        if strcmp(data{i,1},attributes(4)) || data{i,1} == attributes(4)
            num_each(1,4) = num_each(1,4) + 1;
        end
    end
end