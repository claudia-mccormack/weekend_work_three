# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
reservation = HotelReservation.new(customer_name: "Smith", date: "Jan 21", room_number: 210, amenities: [])

puts "Change Room:"
puts "Current room: #{reservation.room_number}"

puts "New room: #{reservation.room_number}"

puts "Add Fridge:"
reservation.add_a_fridge
result = @amenities.include?("fridge")
if result == true
  puts "Fridge added!"
else puts "No fridge"
end

puts "Add crib:"
reservation.add_a_crib
result = @amenities.add_a_crib
if result == true
  puts "Crib added!"
else
  puts "No cribs"
end

puts "Add custom:"
reservation.add_a_custom_amenity("breakfast")
result = @amenities.include?("breakfast")
if result == true
  puts "Enjoy breakfast!"
else
  puts "The kitchen is closed"
end
