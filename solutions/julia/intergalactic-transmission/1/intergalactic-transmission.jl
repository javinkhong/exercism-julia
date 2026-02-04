function get_transmit_sequence(message)
    map(Iterators.partition(join(bitstring.(collect(message))), 7)) do chunk
        v = parse(UInt8, rpad(String(chunk), 7, '0'), base=2)
        return (v << 1) | (count_ones(v) & 1)
    end
end

function decode_sequence(received_seq)
    bitstream = join(map(received_seq) do byte
        isodd(count_ones(byte)) && throw(ErrorException("Parity error"))
        string(byte >> 1, base=2, pad=7)
    end)
    return [parse(UInt8, String(chunk), base=2)
            for chunk in Iterators.partition(bitstream, 8) if length(chunk) == 8]
end
