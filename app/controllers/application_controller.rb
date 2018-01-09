require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    @posts = Post.create(params)
    binding.pry
      #@posts.map { |post| post{params[:name]} post{params[:content]}}

    erb :index
  end
end
