require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name].reverse
  end
  
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @phrase * @num.to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}+#{params[:word2]}+#{params[:word3]}+#{params[:word4]}+ #{params[:word5]} "
  end
  
  get '/:operation/:number1/:number2' do
  end
  
end