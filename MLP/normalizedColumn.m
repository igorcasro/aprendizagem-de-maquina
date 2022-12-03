function [column] = normalizedColumn(column,norm, type)

tam = size(column);
tamType = length(type);
norm = num2cell(norm);

for i=1:tam(1,1)
    if strcmp(column{i,1},type(1,1))
        column{i,1} = norm(1,1);
    elseif strcmp(column{i,1},type(1,2))
        column{i,1} = norm(1,2);
    end
    if tamType >= 3
        if strcmp(column{i,1},type(1,3))
            column{i,1} = norm(1,3);
        end
    end
    if tamType == 4
        if strcmp(column{i,1},type(1,4))
            column{i,1} = norm(1,4);
        end
    end
end