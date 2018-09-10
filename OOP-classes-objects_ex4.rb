# 4. Exercise Paperboy

class Paperboy

      def initialize(name, experience, earnings)
        @name = name
        @experience = experience
        @earnings = earnings
      end

      #Attribute Readers (getter)
      def name
        return @name
      end

      def experience
        return @experience
      end

      def earnings
        return @earnings
      end

      #Attribute Writers (setter)
      def name=(name)
          @name = name
      end

      def experience=(experience)
          @experience = experience
      end

      #Instance methods

      def quota
        if @experience == 0
          return quota = 50
        else
          return quota = 50 + 0.5 * @experience
        end
      end

      def deliver(start_address, end_address)
        puts @experience
        # self.quota
        papers_delivered = (end_address - start_address).abs + 1

        if self.quota < papers_delivered
          puts amount_earned = (papers_delivered - self.quota) * 0.5 + self.quota * 0.25
        else
          puts amount_earned = papers_delivered * 0.25 - 2
        end
        # self.report
        @experience += papers_delivered
        @earnings += amount_earned
        return amount_earned
      end

      def report
        return  "I'm #{@name}, I've delivered #{@experience} papers and
        I've earned $#{@earnings} so far!"
      end


end

mario = Paperboy.new("Mario", 0, 0)

# puts mario.quota
# puts mario.experience
puts mario.deliver(101, 160)
# puts mario.earnings
puts mario.report
