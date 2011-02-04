module CukePuke
  class Formatter
    def initialize( *args )
    end

    def before_step( step )

      Thread.start do
        desc = "#{step.keyword} #{step.name}"
        system( 'say', desc ) 
      end
    end
  end
end
