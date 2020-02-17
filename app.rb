# frozen_string_literal: true

require 'pry-meta'
require 'sinatra'
require 'sinatra/json'
require 'sinatra/activerecord'
require 'rack/contrib'

require_relative 'models/post'

class Blog < Sinatra::Base
  get '/hello.json' do
    @posts = Post.all
    json @posts
  end
end
