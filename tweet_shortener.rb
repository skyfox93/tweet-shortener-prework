require("pry")
def dictionary
  {hello:"hi", to: "2", too: "2", two: "2", 
for: "4", four: "4", be: "b", you: "u", at: "@", "and": "&"
}
end
def word_substituter(tweet)
  words=tweet.split(" ")
  words=words.collect do |word|
    if dictionary.include? word.downcase.to_sym
      word=dictionary[word.downcase.to_sym]
    else word=word
    end
  end
  words=words.join(" ")
  words
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  words=tweet.split(" ")
  words=words.collect do |word|
    if (dictionary.include? word.downcase.to_sym) && tweet.length > 140
      word=dictionary[word.downcase.to_sym]
    else word=word
    end
  end
  words=words.join(" ")
  words
end
def shortened_tweet_truncator(tweet)
  words=tweet.split(" ")
  words=words.collect do |word|
    if (dictionary.include? word.downcase.to_sym) && tweet.length > 140
      word=dictionary[word.downcase.to_sym]
    else word=word
    end
  end
  words=words.join(" ")
  if words.length>140
    words="#{words[0...137]}..."
  end
  words
end



selective_tweet_shortener("I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.")