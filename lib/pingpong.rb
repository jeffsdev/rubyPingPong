# Behavior: Counts from 1 to a given number
# Input: 2
# Output: an array of [1,2]

# Behavior: A number divisible by 3 returns "ping"
# Input: 3
# Output: [1,2,"ping"]

# Behavior: A number divisible by 5 returns "pong"
# Input: 5
# Output: [1,2,ping,4,"pong"]

# Behavior: A number divisible by 3 and 5 returns "pingpong"
# Input: 15
# Output: [1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]

class Fixnum
  define_method(:pingpong) do
    pingpongs = []
    self.times() do |time|
      if (time + 1)%15 == 0
        pingpongs.push("pingpong")
      elsif (time + 1)%3 == 0
        pingpongs.push("ping")
      elsif (time + 1)%5 == 0
        pingpongs.push("pong")
      else
        pingpongs.push(time + 1)
      end
    end
    return pingpongs
  end
end
