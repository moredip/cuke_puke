module CukePuke
  class Formatter
    def initialize( *args )
    end

    def before_step( step )
      system( 'say', step ) 
    end
  end
end
