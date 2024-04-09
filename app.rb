require "sinatra"
require "sinatra/reloader"

moves = ["rock","paper","scissors"]


get("/") do
  erb(:home, {:layout => :wrapper})

end

get("/rock") do
  
  computer_move = moves.sample

  if computer_move == "paper"
    success = "lost"
  elsif computer_move == "rock"
    success = "tied"
  else
    success = "won"
  end

  @move = "They played #{computer_move}!"
  @outcome = "We #{success} !"

  erb(:rock,{:layout => :wrapper} )

end

get("/paper") do
  
  computer_move = moves.sample

  if computer_move == "paper"
    success = "tied"
  elsif computer_move == "rock"
    success = "won"
  else
    success = "lost"
  end

  @move = "They played #{computer_move}!"
  @outcome = "We #{success} !"

  erb(:paper,{:layout => :wrapper} )

end

get("/scissors") do
  
  computer_move = moves.sample

  if computer_move == "scissors"
    success = "tied"
  elsif computer_move == "rock"
    success = "lost"
  else
    success = "won"
  end

  @move = "They played #{computer_move}!"
  @outcome = "We #{success} !"

  erb(:scissors,{:layout => :wrapper} )

end
