"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(sentence::AbstractString)
    # Create a set to keep track of unique letters in the sentence
    unique_letters = Set{Char}()
    # Convert the sentence to lowercase and iterate through each character
    for char in lowercase(sentence)
        # Check if the character is a valid lowercase letter
        if 'a' <= char <= 'z'
            # Add the character to the set of unique letters
            push!(unique_letters, char)
        end
    end
    # Check if the set of unique letters has 26 elements, which indicates all letters are present
    return length(unique_letters) == 26
end

