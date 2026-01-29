function message(msg)
    msg = split(msg, ":")
    return strip(msg[2])
end

function log_level(msg)
    msg = split(msg, ":")
    return lowercase(replace(msg[1], "["=>"", "]"=>""))
end

function reformat(msg)
    a = message(msg)
    b = log_level(msg)
    return "$a ($b)"
end
