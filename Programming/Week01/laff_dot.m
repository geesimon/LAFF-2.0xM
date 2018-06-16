function [ alpha ] = laff_dot( x, y )
[m_x, n_x] = size(x);
[m_y, n_y] = size(y);

if(~isvector(x) || ~isvector(y) || m_x * n_x ~= m_y * n_y)
    alpha = 'FAILED';
    return
end

alpha = 0;

for i = 1:m_x * n_x
    alpha = alpha + x(i) * y(i);
end
end