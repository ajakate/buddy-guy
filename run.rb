class Buddy

  CYCLE = ["friend","buddy","pal","guy"]

  def initialize
    @buddy_index = [-1,0]
  end

  def print_next
    @buddy_index.map! { |i| i == 3 ? 0 : i + 1 }
    puts "I'm not your #{CYCLE[@buddy_index[0]]}, #{CYCLE[@buddy_index[1]]}"
    sleep 1
  end
end

buddy = Buddy.new
loop do
  begin
    buddy.print_next
  rescue Exception => e
    puts "Hey! Stop it!"
  end
end
