require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:main)
end


get("/rock") do
  @player_move = "We played rock!"
  @rand_move = rand(1..3)
  case @rand_move
  when 1
    @move_output = "They played rock!"
    @result = "We tied!"
  when 2
    @move_output = "They played scissors!"
    @result = "We won!"
  when 3
    @move_output = "They played paper!"
    @result = "We lost!"
  end
  erb(:rock)
end

get("/paper") do
  @player_move = "We played paper!"
  @rand_move = rand(1..3)
  case @rand_move
  when 1
    @move_output = "They played rock!"
    @result = "We won!"
  when 2
    @move_output = "They played scissors!"
    @result = "We lost!"
  when 3
    @move_output = "They played paper!"
    @result = "We tied!"
  end
  erb(:rock)
end

get("/scissors") do
  @player_move = "We played scissors!"
  @rand_move = rand(1..3)
  case @rand_move
  when 1
    @move_output = "They played rock!"
    @result = "We lost!"
  when 2
    @move_output = "They played scissors!"
    @result = "We tied!"
  when 3
    @move_output = "They played paper!"
    @result = "We won!"
  end
  erb(:rock)
end
