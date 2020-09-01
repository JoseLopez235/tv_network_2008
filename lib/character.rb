class Character
  attr_reader :name, :actor, :salary
  def initialize(character_hash)
    @name = character_hash[:name]
    @actor = character_hash[:actor]
    @salary = character_hash[:salary]
  end

  def name_all_caps?
    name_all_caps = false
    @name.each_char do |letter|
      if letter == letter.upcase
        name_all_caps = true
      else
        name_all_caps = false
      end
    end
    name_all_caps
  end
end
