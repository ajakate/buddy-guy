module Buddy

  CYCLE = ["friend","buddy","pal","guy"]

  def self.print
    puts "I'm not your #{CYCLE[rand(0..3)]}, #{CYCLE[rand(0..3)]}"
    sleep 1
  end
end

loop do
  begin
    Buddy.print
  rescue Exception => e
    puts "Hey! Stop it!"
  end
end
