function y = countValues(x)
%COUNTVALUES Count number of appearance for each value from the list/array
%   [y] = COUNTVALUES(x) 
%   This is a helper function created by Sergei Simonian

y = [];

values = unique(x);

% This transformation makes sure we always get [nx1] array instead of list
values = values(:);

for value = values'
    count = sum(x(:) == value);
    y = [y; value, count];
endfor

end