class GameController < ApplicationController
  def user_plays_rock

moves = ["rock", "paper", "scissors"]

@computer_move = moves.sample

    render("game/play_rock.html.erb")
end
end
