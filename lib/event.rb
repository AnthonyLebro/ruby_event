class Event
  attr_accessor :start_date, :attendees, :duration, :title

  def initialize(start_date, attendees, duration, title)
    @start_date = Time.parse(start_date) #année/mois/jour
    @attendees = attendees.to_a 
    @duration = (duration * 60).to_i #30 (min)
    @title = title.to_s
  end

  def postpone_24h
    @start_date = @start_date +24*60*60
  end

  def end_date
    @start_date = @start_date + @duration
  end

  def is_past

  end

  def is_future
  end


end