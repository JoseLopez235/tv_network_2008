class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      result = show.characters.find do |character|
        character.salary > 500_000 && character.name_all_caps?
      end
      if result != nil
        main_characters << result
      end
    end
    main_characters
  end

  def actors_by_show
    shows_hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        if shows_hash[show.name].nil?
          shows_hash[show.name] = [character.actor]
        else
          shows_hash[show.name] << character.actor
        end
      end
    end
    shows_hash
  end   
end
