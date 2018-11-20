class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize (speed, strength)
    @speed = speed
    @strength = strength
    if @speed > @@max_speed
      @speed == @@default_speed
    end
    if @strength > @@max_strength
        @strength == @@default_strength
    end
  end

  def encounter
    if outrun_zombie?
      return "You escaped."
    elsif survive_attack?
      return "You escaped."
    else return
      @@horde.push(Zombie.new())
      "You died."
    end
  end

  def outrun_zombie?
    speed = rand(@@max_speed + 1)
    if speed > @@max_speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    strength = rand(@@max_strength + 1)
    if strength > @@max_strength
      return true
    else
      return false
    end

  end

  def self.all
    return @@horde.length
  end

  def self.new_day?
    self.some_die_off
    self.spawn
    self.increase_plague_level
  end

  def self.some_die_off
    zombie_num = rand(11)
    zombie_num.times do
    @@horde.pop
    end
  end

  def self.spawn
    random = rand(@@plague_level+1)
      random.times do |x|
         @@horde << Zombie.new(rand(@@max_speed+1), rand(@@max_strength+1))
      end
  end

  def self.increase_plague_level
    @@plague_level += rand(3)
  end


end
