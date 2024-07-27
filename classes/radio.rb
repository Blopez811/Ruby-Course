#Radio freq range
# FM 88.0 108.0
# AM 540.0 1600.0


class Radio
    attr_reader :volume, :band, :freq

    def initialize(band)
      if band == "FM"
        @freq = 102.4
      elsif band == "AM"
        @freq = 770.0

      else
        return "Please provide a valid band of either 'AM' or 'FM'!"
      end
      @volume = 5 
      @band = band
    end

    def volume=(value)
        if value < 1 || value > 10
          puts "Volume doesn't go that high!"
          return
        else
          @volume = value
        end

    end

    def freq=(value)
      if @band == 'FM'
        if value < 88.0 || value > 108.0
          puts "Pick a valid Frequency between 88.0 and 108.0"
          return
        else
          @freq = value
        end
      elsif @band == 'AM'
        if value < 540.0 || value > 1600.0
          puts "Pick a valid Frequency between 540.0 and 1600.0"
          return
        else
          @freq = value
        end
      end
    end

    def crank_it_up
        @volume = 11
    end
    def status
        "station: #{@freq} #{@band} volume: #{@volume}"
    end

    def self.am 
      Radio.new('AM')
    end

    def self.fm 
      Radio.new('FM')
    end
end