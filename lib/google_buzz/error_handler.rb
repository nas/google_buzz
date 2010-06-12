module GoogleBuzz
  class ErrorHandler < StandardError
    
    def initialize(data)
      @data = data
      super
    end
  end
  
  class AuthorizationFailure < ErrorHandler; end
  
  class ResponseFailure < ErrorHandler; end
  
  class NoResult < ErrorHandler; end
  
  class IncompleteRequestParameter < ErrorHandler; end
end