
require 'trello'
#Change this values for perpetual key and token.
api_key = nil
api_token = nil
# Fill this list in place so that you don't need to fill all the board names each time
board_names = []
# Fill your username here so you don't have do be prompted everytime you run the script.
user = nil

if !user
  puts "What's your trello username?"
  user = gets
end
if !api_key
  puts "Insert you Trello API Key (you can get it here: https://trello.com/app-key)"
  api_key = gets
  api_key = api_key.gsub("\n",'')
end

if !api_token
  puts "Insert you Trello API Token (you can get it here: https://trello.com/1/authorize?expiration=never&key="+api_key+"&name=Ruby%20Trello&response_type=token&scope=read%2Cwrite%2Caccount)"
  api_token = gets
  api_token = api_token.gsub("\n",'')
end



if board_names.empty?
  puts "Insert the name of one board you'd like to monitor: [insert all to All Boards]"
  name = gets
  name = name.gsub("\n",'')
  if name == 'all'
    board_names = []
  else
    board_names << name

    while !(name.eql? "exit") do
      puts "Insert the name of another board you'r like do monitor: [insert exit to stop]"
      name = gets
      name = name.gsub("\n",'')

      board_names << name

    end
  end
end


Trello.configure do |config|
  config.developer_public_key = api_key # The "key" from step 1
  config.member_token = api_token # The token from step 3.
end

member = Trello::Member.find(user)
# Print out his name
boards = member.boards

boards.each do |board|
  puts "Inspecting " + board.name
  if board_names.include?(board.name)
    board.cards.each do |card|
      if card.members.include?(member)
        if card.list.name != "Done"
          puts "Card"
          puts card.name
          puts card.list.name
        end
      end
    end
  elsif board_names.empty?
    board.cards.each do |card|
      if card.members.include?(member)
        if card.list.name != "Done"
          puts "Card"
          puts card.name
          puts card.list.name
        end
      end
    end
  end
end
puts bob.full_name # "Bob Tester"
puts board_names
