function exchange_money(budget, exchange_rate)
    return round(budget / exchange_rate, digits=2)
end

function get_change(budget, exchanging_value)
    return budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    return floor(Int, number_of_bills*denomination)
end

function get_number_of_bills(amount, denomination)
    return div(amount, denomination)
end

function get_leftover_of_bills(amount, denomination)
    return round(amount % denomination, digits=2)
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    x = div(budget / (exchange_rate*(1+spread/100)), denomination)
    return floor(Int,x*denomination)
end
