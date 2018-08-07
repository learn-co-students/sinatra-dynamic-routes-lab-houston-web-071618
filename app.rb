require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
    "Hello #{@name}!"
  end
  get "/square/:number" do
    @num = params[:number]
    @num=@num.to_i
    @num = (@num*@num)
    "#{@num.to_s}"
  end
  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    @num = @num.to_i
    i = 0
    output= ""
    while i<@num do
      output+=@phrase
      i+=1
    end
    "#{output}"
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    output=@word1+" "+@word2+" "+@word3+" "+@word4+" "+@word5
    "#{output}."
  end
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      @result = @num1+@num2
    when "subtract"
      @result = @num1-@num2
    when "multiply"
      @result = @num1*@num2
    when "divide"
      @result = @num1/@num2
    # else
    #   "operation not supported"
    end

    "#{@result}"
  end

end
