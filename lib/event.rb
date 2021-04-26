class Event
  attr_accessor :start_date, :attendees, :duration, :title

  def initialize(start_date, attendees, duration, title)
    @start_date = Time.parse(start_date) #année/mois/jour
    @attendees = attendees.to_a 
    @duration = duration.to_i #30 (min)
    @title = title.to_s
  end

  def postpone_24h
    @start_date = @start_date +24*60*60
  end

  def end_date
    @start_date = @start_date + @duration * 60
  end

  def is_past
    @start_date > Time.now
  end

  def is_future
    @start_date < Time.now
  end

  def is_soon
    @star_date > Time.now +30 * 60
  end

  def to_s
    puts "> Titre : #{@title} <"
    puts "> Date du début : #{@start_date} <"
    puts "> Durée : #{@duration} <"
    puts "> Invité(s) : #{@attendies.join(", ")} <"
  end

end