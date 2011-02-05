module CukePuke
  class Formatter

    VOICE_FOR = { 
      :feature => 'vicki', 
      :scenario => 'ralph',
      :step => 'fred'
    }

    def initialize( *args )
    end

    def before_step( step )
      say "#{step.keyword} #{step.name}", VOICE_FOR[:step]
    end

    def scenario_name(keyword, name, file_colon_line, source_indent)
     say "scenario: #{name}", VOICE_FOR[:scenario] 
    end

    def before_feature(feature)
      say "feature: #{feature.name}", VOICE_FOR[:feature] 
    end

    private
    
    def say( what_to_say, voice = 'alex' )
     system 'say', '-v', voice, what_to_say  
    end
  end
end
