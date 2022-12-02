function [norm] = normalized(data)
%UNTITLED Summary of this function goes here

tam = length(data);

mini = min(data);
maxi = max(data);

norm = zeros(1,tam);

for i=1:tam
    norm(1,i) = (data(i) - mini)/(maxi - mini);
end