require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase].to_s
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{@result}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].to_s
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @result = @num1 + @num2
    elsif @operation == "multiply"
      @result = @num1 * @num2
    elsif @operation == "divide"
      @result = @num1 / @num2
    elsif @operation == "subtract"
      @result = @num1 - @num2
    end
    "#{@result}"
  end
end
