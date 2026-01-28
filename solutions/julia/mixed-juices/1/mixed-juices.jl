function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        return 0.5
    elseif juice == "Energizer" 
        return 1.5
    elseif juice ==  "Green Garden"
        return 1.5
    elseif juice == "Tropical Island"
        return 3
    elseif juice == "All or Nothing"
        return 5
    else 
        return 2.5
    end
end

function wedges_from_lime(size)
    if size == "small"
        return 6
    elseif size == "medium" 
        return 8
    elseif size ==  "large"
        return 10
    else
        return 0
    end
end

function limes_to_cut(needed, limes)
    n = 0
   while needed > 0 && length(limes) != 0
       needed -= wedges_from_lime(popfirst!(limes)) 
       n += 1
   end
    return n
end

function order_times(orders)
    return [time_to_mix_juice(orders[x]) for x in 1:length(orders)]
end

function remaining_orders(time_left, orders)
   while time_left > 0 && length(orders) != 0
       time_left -= time_to_mix_juice(popfirst!(orders)) 
   end
    return orders
end
