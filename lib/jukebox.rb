require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def run (songs)
puts "Please enter a command:"
command= gets.strip
  case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
     play(songs)
    when "exit"
     exit_jukebox
  end 
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  i=0
  while i< songs.length
  puts "#{i+1}. #{songs[i]}"
  i+=1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  n=gets.strip
  if songs.include?(n)
      puts "Playing #{n}"
  elsif n.to_i != 0 && n.to_i < songs.length
    j=n.to_i 
    puts "Playing #{songs[j-1]}"
  else
   puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end