require 'rubygems'
require 'sinatra'
require './tweet.rb'

get '/' do
  'ok'
end

get '/random_tweet' do
  Tweet.new.random_tweet
end

