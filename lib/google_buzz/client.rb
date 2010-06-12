module GoogleBuzz
  
  class Client
    
    def interface(resource, options)
      res = end_point_with_params(resource)
      GoogleBuzz::Interface.new(res, options).get
    end
    
    def end_point_with_params(resource)
      "#{resource_type}/#{resource}"
    end
    
    def resource_type
      type = case self.class.name.split('::').last
               when 'Activity'
                 'activities'
               end
      type
    end
    
  end
  
end