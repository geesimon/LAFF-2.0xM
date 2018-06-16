function [ y_out ] = laff_copy( x, y )
[m_x, n_x] = size(x);
[m_y, n_y] = size(y);

if(m_x ~= 1 && n_x ~= 1 || m_y ~= 1 && n_y ~= 1 || m_x * n_x ~= m_y * n_y)
    y_out = 'FAILED';
    return
end

y_out = zeros(m_y, n_y);

for i = 1:m_x * n_x
    y_out(i) = x(i);
end
end