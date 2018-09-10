# Exercise 3: Player

class Player

  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  #Attribute Readers (getter)
  def gold_coins
    return @gold_coins
  end

  def health_points
    return @health_points
  end

  def lives
    return @lives
  end

  #Attribute Writers (setter)
  def gold_coins=(gold_coins)
      @gold_coins = gold_coins
  end

  def health_points=(health_points)
      @health_points = health_points
  end

  def lives=(lives)
      @lives = lives
  end

  def level_up
    return @lives += 1
  end

  def collect_treasure
    if @gold_coins % 10 == 0
        level_up
      return @gold_coins
    else
      return @gold_coins += 1
    end
  end

  def do_battle(damage)
      puts @health_points -= damage
        if @health_points < 1
          puts @health_points = 10
          puts @lives -= 1
            if @lives == 0
              restart
            print "Now Mario has #{gold_coins} gold coins, #{health_points}
             health points, #{lives} lives"
            end
        end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end

mario = Player.new(0, 2, 1)

# puts mario.level_up
# puts mario.collect_treasure

puts mario.do_battle(2)
# puts mario
