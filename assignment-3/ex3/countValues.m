function y = countValues(x)

y = [];

values = unique(x);
for value = values'
    count = sum(x(:) == value);
    y = [y; value, count];
endfor

end