def call_friend(friend)
  self.hap_points(@hap_points + 3)
  puts "Hi #{friend}! It's #{self.name}. How are you?"
  friend.hap_points(friend.hap_points + 3)
end
