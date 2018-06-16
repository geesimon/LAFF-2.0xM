function [ alpha ] = laff_norm2( x )

% Make sure x and y are (row or column) vectors of equal length
if (~isvector(x))
    alpha = 'FAILED';
    return
end

[m_x, n_x] = size(x);
alpha = 0;

for i = 1: m_x * n_x
    alpha = alpha + x(i) ^ 2;
end

alpha = sqrt(alpha);
end