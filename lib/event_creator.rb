class EventCreator
    attr_accessor: start_date, :duration, :title, :attendees
    
    def get_the_name()
        puts "Creation d'un évenement"
        puts "Quel est le nom de ton évennement?"
        print ">"
        @title =gets.chomp.to_s
    end

    def get_the_date()
        puts "Quelle est la date de début?"

        @star_date =gets.chomp.to_1
    end