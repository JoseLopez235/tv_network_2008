class Show
  attr_reader :name, :creator, :characters
  def initialize(name,creator,characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    @characters.each do |actor|
      total += actor.salary
    end
    total
  end

  def highest_paid_actor
    highest_paid = @characters.max_by do |actor|
      actor.salary
    end
    highest_paid.actor
  end
end
