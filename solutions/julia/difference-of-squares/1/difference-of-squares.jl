function square_of_sum(n)
    return floor(Integer,((n^2 + n)/2)^2)
end

function sum_of_squares(n)
    return floor(Integer,(n * (n+1) * (2n+1))/6)
end

function difference(n)
    ans = square_of_sum(n) - sum_of_squares(n)
    return floor(Integer,ans)
end