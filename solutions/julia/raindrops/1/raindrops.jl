function raindrops(number)
    factors = Dict(3 => "Pling", 5 => "Plang", 7 => "Plong")
    st = join([factors[ftr] for ftr ∈ sort(collect(keys(factors))) if number % ftr == 0])
    return st != "" ? st : string(number)
end