module Exhibit
  class Presenter
    def initialize(object, template)
      @object = object
      @template = template
    end

  private

    def self.exhibit(name)
      define_method(name) do
        @object
      end
    end
  
    def method_missing(*args, &block)
      @template.send(*args, &block)
    end
  end
end