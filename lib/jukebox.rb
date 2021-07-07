def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request_song = gets.strip
  
  songs.each_with_index do |song, index|
    if (request_song.to_i == index + 1) || (request_song == song)
      return puts "Playing #{song}"
    end
  end
  return puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  cmd = gets.strip
  
  while !(cmd == "exit" )
    if cmd == "help"
      help
    elsif cmd == "list"
      list(songs)
    elsif cmd == "play"
      play(songs)
    else
      puts "Sorry, that's not a valid command!"
    end
    
    puts "Please enter a command:"
    cmd = gets.strip
  end    
        
  exit_jukebox
end
