def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2', 
    "too" => '2',
    "two" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@' ,
    "and" => '&'
  }
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  
  tweet_array.collect do |word|
    dictionary.keys.collect do |shorter|
      if word == shorter
        dictionary.values_at(shorter)
      end
    end
  end
  
end








