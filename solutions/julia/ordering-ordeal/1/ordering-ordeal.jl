function sortquantity!(qty)
    i = sortperm(qty, rev=true)
    sort!(qty, rev=true)
    return i
end    

function sortcustomer(cust, srtperm)
    return cust[srtperm]
end

function production_schedule!(cust, qty)
    sorted = sortquantity!(qty)
    return sortcustomer(cust, sorted), sortperm(sorted)
end
