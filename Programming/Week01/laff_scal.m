function [ x_out ] = laff_scal( alpha, x )

% Make sure x and y are (row or column) vectors of equal length
if ( ~isscalar(alpha) || ~isvector(x))
    x_out = 'FAILED';
    return
end

[m_x, n_x] = size(x);


for i = 1: m_x * n_x
    x(i) = alpha * x(i);
end

x_out = x;
end