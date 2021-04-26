class EventCreator 
    attr_accessor :start_date, :duration, :title, :attendees
  
    def initialize
      @title=get_the_name()
      @start_date=get_the_date()
      @duration=get_the_duration()
      @attendees=get_the_attendees()
      create_event()
    end
  
  
    def get_the_name()
      puts "-----   Nouvel évenement   -----" 
      puts "Veuiller saisir le  nom de l'événement"
      print "> "
      return gets.chomp.to_s
    end
  
    def get_the_date
      puts "veuillez saisir la date de l'événement"
      print "> "
      return gets.chomp.to_s
    end
  
    def get_the_duration
      puts "Veuillez saisir la durée de l'événement"
      print "> "
      return gets.chomp.to_i
    end
  
    def get_the_attendees
      puts "Veuillez intégrer les adresses Emails de vos invité(e)s"
      print "> "
      attendees=gets.chomp.split
      puts "c'est noté, vous etes booké"
      return attendees
    end
  
    def create_event()
      new_event=Event.new(@start_date, @attendees, @duration, @title)
      new_event.to_s
    end
  
  end