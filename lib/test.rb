require "pry"
require 'time'

class Event
def initialize(start_date)
  @start_date = Time.parse(start_date)
end

end
binding.pry
puts "end of file"


