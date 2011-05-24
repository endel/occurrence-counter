# Ruby Occurrence Counter

Utility to count occurrences from standard data types in Ruby.
Feel free to improve my source-code.

## Add to your Gemfile

    gem "occurrence_counter", :git => "https://github.com/endel/occurrence-counter.git", :branch => "master"

## Examples:
    # Counting Array item occurrences
    array = [1,1,1,1,1,3,3,1,3,3,3,5,5]
    array.count_occurrences
    => {1 => 6, 3 => 5, 5 => 2}

    # Counting word occurrences in String
    string = "The quick brown fox jumps over the lazy dog. Because the dog is lazy and he doesn't likes the brown color."
    string.word_occurrences(:downcase)
    => {"the"=>4, "quick"=>1, "brown"=>2, "fox"=>1, "jumps"=>1, "over"=>1, "lazy"=>2, "dog"=>2, "because"=>1, "is"=>1, "and"=>1, "he"=>1, "doesnt"=>1, "likes"=>1, "color"=>1}

    # Using pre-processor
    string = "The quick brown fox jumps over the lazy dog. Because the dog is lazy and he doesn't likes the brown color."
    string.word_occurrences(lambda {|str|
        str = str.downcase
        str.length >= 5 ? str : nil
    })
    => {"quick"=>1, "brown"=>2, "jumps"=>1, "because"=>1, "doesnt"=>1, "likes"=>1, "color"=>1}

    