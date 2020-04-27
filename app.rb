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
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @math_sym = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
      if @math_sym == "add"
      answer =  @num1 + @num2
      elsif @math_sym =="subtract"
      answer =  @num1-@num2
      elsif @math_sym == "multiply"
      answer =  @num1*@num2
      elsif @math_sym == "divide"
      answer =  @num1/@num2
      else
       answer = "Cannot perform operation"
    end
      answer.to_s
  end
  
end