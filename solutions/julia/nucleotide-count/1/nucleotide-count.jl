"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    nucleotides = Dict(['A','C','G','T'] .=> 0)
    for x in strand
        if !haskey(nucleotides, x)
            throw(DomainError("error"))
        else
            nucleotides[x] += 1
        end
    end
    return nucleotides
end
