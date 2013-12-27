require 'active_support/inflector'

module RiotClient
  class BaseModel
    def initialize(attributes = {})
      attributes.each do |key, value|
        send("#{key.underscore}=", value)
      end
    end
  end
end