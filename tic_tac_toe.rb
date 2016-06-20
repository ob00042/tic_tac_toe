class TicTacToe
  
  def initialize
  	@A1=" "
  	@A2=" "
  	@A3=" "
  	@B1=" "
  	@B2=" "
  	@B3=" "
  	@C1=" "
  	@C2=" "
  	@C3=" "
  	@current_player="playerX"
  end

protected

  def TicTacToe.current_player(current_round)
  	current_round%2==0 ? @current_player="playerX" : @current_player="playerO"
  end

  def TicTacToe.mark
  	@current_player=="playerX" ? @mark="X" : @mark="O"
  end

  def TicTacToe.board
  	puts "   A   B   C   "
  	puts "1  #{@A1} |  #{@B1} |  #{@C1}"
  	puts "2  #{@A2} |  #{@B2} |  #{@C2}"
  	puts "3  #{@A3} |  #{@B3} |  #{@C3}"
  end

  def TicTacToe.mark_change
  	puts "Which EMPTY box would you like to change? (A1 to C3)"
  	box=gets.chomp
  	if box=="A1" #&& @A1==" "
  		@A1=@mark
  	elsif box=="A2" && @A2==" "
  		@A2=@mark
  	elsif box=="A3" && @A3==" "
  		@A3=@mark
  	elsif box=="B1" && @B1==" "
  		@B1=@mark
  	elsif box=="B2" && @B2==" "
  		@B2=@mark
  	elsif box=="B3" && @B3==" "
  		@B3=@mark
  	elsif box=="C1" && @C1==" "
  		@C1=@mark
  	elsif box=="C2" && @C2==" "
  		@C2=@mark
  	elsif box=="C3" && @C3==" "
  		@C3=@mark
  	else
  		puts "Not valid choice"
  		TicTacToe.mark_change
  	end
  end

  def check_win #implement in def game after 4ish round!!!!
  	if (@A1==@B1 && @B1==@C1) || (@A2==@B2 && @B2==@C2) || (@A3==@B3 && @B3==@C3) || (@A1==@A2 && @A2==@A3) || (@B1==@B2 && @B2==@B3) || (@C1==@C2 && @C2==@C3) || (@A1==@B2 && @B2==@C3) || (@A3==@B2 && @B2==@C1)
  		puts "#{@current_player} wins!"
  		true
  	end
  end


public

  def TicTacToe.game
  	TicTacToe.new
  	round=0
  	loop do
  	  TicTacToe.current_player(round)
  	  TicTacToe.mark
  	  TicTacToe.board
  	  
  	  TicTacToe.mark_change
  	  
  	  if round>4
  	  	check_win
  	  	break if check_win
  	  end

  	  round+=1

  	  break if round>9

  	end

  end

end

TicTacToe.game