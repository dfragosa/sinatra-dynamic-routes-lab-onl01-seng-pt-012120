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
    @num.times {|x| x}
    3.times("#{@phrase}")
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  end
  
  get '/:operation/:number1/:number2' do
  end
  
end