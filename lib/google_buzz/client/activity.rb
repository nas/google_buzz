module GoogleBuzz
  
  class Client::Activity < GoogleBuzz::Client
    
    def search(query, options)
      interface("search", options)
    end
    
    def public(user_id, options={})
      interface("#{user_id}/@public", options)
    end
    
  end

  
end