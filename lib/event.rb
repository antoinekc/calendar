require "pry"
require "time"

class Event
  attr_accessor :start_date
  attr_accessor :title

  @@attendees = []

  def initialize(start_date, duration, title, attendee_email)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendee = attendee_email

    @@all_attendees = @attendee
  end

  def self.attendees
    return @_all_attendees
  end

  def modify_title(title)
    @title = title
  end

  def postpone_24h
    @start_date = start_date + 3600 * 24
  end

  def end_date
    @end_date = @start_date + @duration * 60
  end

  def passed_event
    case
    when @start_date + @duration * 60 < Time.now #la date de fin est inférieure à la date du jour
      puts "The event is already passed"
      return true
    when @start_date - Time.now <= 30 * 60
      puts "L'évènement est dans moins de trente minutes"
    when @start_date > Time.now #la date future est supérieure à la date du jour
      puts "L'évènement a pas encore commencé"
    else
      puts "L'évènement est en train de se dérouler"
    end
  end

  def to_s
    #attendees = @attendee.each | attendee |
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration}"
    puts "Invités : #{@attendee}" # a corriger car cela n'imprimpe pas l'array sans les crochets./
    
  end


end
binding.pry
puts "end of file"
