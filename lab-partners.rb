
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "Lab-Partners 1.0"
  puts "Press enter to continue..."
  gets
end

menu

NAMES = ['CJ', 'Stewart', 'James P.','Luke','Adam','Britney','Michael','Anna','Julien','Andrea','Salmon',
                'Ankoor','Murad','James E.','Jarkyn','Aya','Will','Emille']

def shuffle
  groups = []
  puts "What group size would you like?"
  size =gets.chomp.to_i
  NAMES.shuffle.each_slice(size) do |a|
    groups << a
  end

  if groups.last.size < size
    last_group = groups.last
    groups[-2] = groups[-2] | last_group
    groups.pop
  end

    puts "Here are your #{size} groups"
    groups.each do |g|
      p g
    end
end

shuffle
