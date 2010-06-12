module GoogleBuzz
  
  class Interface
    
    include HTTParty
    
    BASE_URL = 'https://www.googleapis.com/buzz'
    VERSION = 'v1'
    
    def initialize(resource, options)
      # 'activities/googlebuzz/@public'
      @resource = resource
      @options = options
      @result = nil
    end
    
    def get
      @result ||= GoogleBuzz::Interface.get(construct_url, :query => @options)
      if @options[:alt] == 'json'
        GoogleBuzz::Interface.format(:json)
      end
      return @result
    end
    
    def construct_url
      "#{BASE_URL}/#{VERSION}/#{@resource}"
    end
    
  end
  
end