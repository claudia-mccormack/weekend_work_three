# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.


# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(features)
    @power = false
    @volume = 5
    @channel = features[:channel]
  end
end

class Remote < Tv
  attr_accessor :tv

  def initialize(tv)
    super
    @tv = tv[:tv]
  end

  def toggle_power
    @power = !@power
  end

  def increment_volume
    @volume = @volume + 1
  end

  def decrement_volume
    @volume = @volume - 1
  end

  def set_channel(net)
    @channel = net
  end
end


tv = Tv.new(channel: 3)
remote = Remote.new(tv: tv)

remote.toggle_power
  if remote.power
    puts "TV on."
  else
    puts "TV off."
  end

remote.increment_volume
puts "Volume: #{remote.volume.to_s}"

remote.decrement_volume
puts "Volume: #{remote.volume.to_s}"

remote.set_channel(7)
puts "Channel: #{remote.channel.to_s}"
