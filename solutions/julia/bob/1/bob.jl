function bob(stimulus)

    stimulus = strip(stimulus)
    
    is_silent   = isempty(stimulus)
    is_question = endswith(stimulus, '?')
    is_shouting = occursin(r"\p{L}", stimulus) && stimulus == uppercase(stimulus)

    if is_silent
        return "Fine. Be that way!"
    elseif is_shouting && is_question
        return "Calm down, I know what I'm doing!"
    elseif is_shouting
        return "Whoa, chill out!"
    elseif is_question
        return "Sure."
    else
        return "Whatever."
    end
end
