class GameController < ApplicationController
  def user_plays_rock

    @computer_move = ["rock", "paper", "scissors"].sample

    @user_move = "rock"

    if @computer_move == "rock"
    @outcome = "tied"
  elsif @computer_move == "paper"
    @outcome = "lost"
  elsif @computer_move == "scissors"
    @outcome = "won"
  end
    render("game/play_rock.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    @user_move = "paper"
    if @computer_move == "rock"
          @outcome = "won"
        elsif @computer_move == "paper"
          @outcome = "tied"
        elsif @computer_move == "scissors"
          @outcome = "lost"
        end
    render("game/play_paper.html.erb")
  end

  def user_plays_scissors

    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = "scissors"
    if @computer_move == "rock"
        @outcome = "lost"
      elsif @computer_move == "paper"
        @outcome = "won"
      elsif @computer_move == "scissors"
        @outcome = "tied"
      end
    render("game/play_scissors.html.erb")
  end
end
