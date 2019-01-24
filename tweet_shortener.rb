require 'pry'

def dictionary
  {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  
  tweet.split(" ").map do |word| if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
 end
 
def bulk_tweet_shortener(tweet)
  tweet.each do |word| 
  puts word_substituter(word)
  
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.split(" ").map { |word| 
  puts word_substituter(word) }
else
  puts tweet
end
end



