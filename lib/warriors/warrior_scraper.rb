class WarriorScraper

    BASE_URL = "https://www.nba.com/teams/warriors"

    def self.scrape_team

        war = Team.new
        pg = open(BASE_URL)
        parsed_html = Nokogiri::HTML(pg)
        player_info = parsed_html.css('.row .nba-player-index__row')
        player_info.each do |number|
            number.css(".nba-player-index__trending-item a:first").each do |person|
                person.css('.nba-player-index__details').each do |what|
                player = Player.new(person.attr('title'))
                player.position = what.css('span')[0].text
                war.players << player
             end  
          end
        end   
    end 

 
end



            


