class WheelOfFortune
      attr_reader :guesses
  def initialize(inputs)
      @themes = inputs[:theme]
      @phrase = inputs[:phrase]
      @guesses = []
  end

  def theme
  @themes
  end

  def to_s
    p @phrase
    render_string = ""
    @phrase.each_char do |e|

      if @guesses.include? e.downcase
        render_string << e
      elsif e == " "
        render_string << " "
      else
        render_string << "_"
      end
    end
       $finished_string ==render_string
       return $finsihed_string
  end



 def can_i_have?(input)
     if @phrase.downcase.include? input.downcase
        @guesses.push(input)
      return true
    else
        @guesses.push(input)
      return false
    end
  end

  def game_over?
    if $finished_string == @phrase{
      return true
    }else{
      return false
    }
  end


#
# # Checks to see if we executed this file from the command-line
# # e.g. `ruby simple_jepordy.rb`
# if __FILE__ == $0
#
#   # DRIVER CODE
#   j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
#   j.can_i_have?("g")
#   j.can_i_have?("o")
#   p j
#   puts j # calls j.to_s
#
# end
