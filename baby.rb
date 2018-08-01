require 'date'
require_relative 'person'
require_relative 'parents'

class Baby < Person
  include Parents::BestBits

  def initialize
    puts "Born: #{born? ? 'yes' : 'no'}"
    puts "Due: #{due_date.strftime('%A %d %B %Y')}"
  end

  def born?
    false
  end

  def due_date
    Date.new(2017,3,8)
  end
end

Baby.new
