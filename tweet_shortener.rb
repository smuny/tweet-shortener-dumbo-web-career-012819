def word_substituter (string)
  string.split(" ")
  # takes in the tweet string and splits at each space
  tweet.map do |word|
    # iterates over each word of the tweet

    if dictionary.keys.include?(word)
      # if the word from the tweet is one of the keys from the dictionary
      # replace it and store the VALUE of that key as the variable word
      word = dictionary[word]

    elsif dictionary.keys.include?(word.downcase)
        # checks the lowercase words.. if the tweet is one of the keys from
        # the dictionary, replace it and store the VALUE of that key as
        # the variable word
        word = dictionary[word.downcase]
    else
      # if the word we are on is NOT in the dictionary, we keep it as is
      word
    end
  end.join(" ")
  # joins the tweet back together with a space in between
end