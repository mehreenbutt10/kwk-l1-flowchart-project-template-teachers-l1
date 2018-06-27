class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index.html
  end

  get '/quiz' do
    @quiz = Quiz.find_by_id(params[:id])
    @question = @quiz.questions.first
  end

  post '/quiz/:id' do

  end
end
