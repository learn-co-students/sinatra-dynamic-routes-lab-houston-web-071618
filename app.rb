require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @n = params[:number].to_i
    (@n**=2).to_s
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @answer = ''
    @n.times do
      @answer += @phrase + '\n'
    end
    return @answer
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @op = params[:operation]
    case @op
      when "add"
        return (@n1 + @n2).to_s
      when "subtract"
        return (@n1 - @n2).to_s
      when "divide"
        return (@n1 / @n2).to_s
      when "multiply"
        return (@n1 * @n2).to_s
      else
        return "Invalid operands: #{params[:operation]}, #{@n1}, #{@n2}"
    end
  end


end