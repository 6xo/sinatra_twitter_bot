require 'rubygems'
require 'twitter'

class Tweet
  def initialize
    @text = <<-EOF.split("\n")
人間は袖口から燃やす
適当なコメント
つぶやく言葉
冗長なポエム
EOF
  end
  
  def random_tweet
    tweet = @text[rand(@text.length)]
    update(tweet)
  end
  
  private
  def update(tweet)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'YOUR_CONSUMER_KEY'
      config.consumer_secret = 'YOUR_CONSUMER_SECRET'
      config.access_token = 'YOUR_ACCESS_TOKEN'
      config.access_token_secret = 'YOUR_ACCESS_SECRET'
    end
    client.update(tweet)
  end
end

