require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  # This is a sample dynamic route.
  get "/reversename/:name" do
    @x = params[:name].reverse
    "#{@x}"
  end

  get "/square/:number" do
    @y = (params[:number].to_i)**2
    "#{@y}"
  end

  get "/say/:number/:phrase" do
    @num = (params[:number]).to_i
    str = ""
    x = @num.times do
      str += "#{params[:phrase]}"
    end
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    new_string = ""
    num = 1
    while num <= 5
      key_symbol = ("word" + num.to_s)
      new_string =  new_string + params[key_symbol.to_sym] + " "
      num+=1
    end
    new_string.strip!
      "#{new_string}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1/@num2}"
    else
    end
  end




end
