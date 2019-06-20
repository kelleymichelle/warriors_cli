class CLI

    def run
        Player.new_from_scraper
        intro
        WarriorScraper.scrape_team
        list_players
        previous_teams
        #guess_position
    end

    def self.hit_it
        Player.new_from_scraper
    end    

    def intro  
        puts "\n\nWelcome to the Warriors information page!\n\n"

        puts "Let's read more about our 2019 Warriors Players.\n\n\n"
        puts "To select a player enter the number of the player you would like to learn more about.\n\n\n"
    end    

    def list_players
        # Team.all.each.with_index(1){| p, i | puts "#{i}. #{p.team_player}"}
        Team.all.map do |team|
            team.team_player.each.with_index(1){| p, i | puts "#{i}. #{p}"}     
        end
    end  

  # dont know if this will actually work lol
  def find_by_name(name)
    Player.all.select {|person| name==person.name}
  end  


    # def menu
    #     puts "Which player would you like to know more about?"
    #     input = gets.strip
    #     while input != 'exit'
    #     end
    # end    
    
    # def player_introduction
    #     puts "Hi my name is #{team_player[1]}, and I'm a #{team_position} for the Golden State Warriors."
    # end   

    # def previous_teams 
    #     #if yes, (second level)
    #     puts "\n\nWould you like to know what other teams I've played for?\n\n"
    #     puts "Enter 'Y' to see what other teams I have played for.\n\n"
    #     puts "Enter 'N' to and exit and return to the home page.\n\n"
    #     response
    #     if ["Y"].include?
    # end

   

    


end