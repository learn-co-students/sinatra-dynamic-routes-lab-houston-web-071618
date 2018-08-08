require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
  	@name = params[:name]
  	"#{@name.reverse}"
  end

  get "/square/:number" do
  	@square = params[:number].to_i * params[:number].to_i
  	"#{@square.to_s}"
  end

  get "/say/:number/:phrase" do 
    @phrase = params[:phrase]
    @num = params[:number].to_i
    said = ""
    @num.times do
      said += "#{@phrase}"
    end
    said
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    equals = ""
    if @operation == "add"
      equals = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif @operation == "subtract"
      equals = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif @operation == "multiply"
      equals = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif @operation == "divide"
      equals = (params[:number1].to_i / params[:number2].to_i).to_s
    else
      equals = "unable to process, try again"
    end
  end



end