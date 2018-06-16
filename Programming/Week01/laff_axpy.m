function [ y_out ] = laff_axpy( alpha, x, y )

[m_x, n_x] = size(x);
[m_y, n_y] = size(y);


if ( ~isscalar(alpha) || ~isvector(x) || ~isvector(y) || m_x * n_x ~= m_y * n_y)
    y_out = 'FAILED';
    return
end

y_out = zeros(m_y, n_y);
for i = 1: m_x * n_x
    y_out(i) = alpha * x(i) + y(i);
end

end