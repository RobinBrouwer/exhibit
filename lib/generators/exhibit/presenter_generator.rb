require 'rails/generators'

module Exhibit
  class PresenterGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    argument :presenter_name, :type => :string
    
    def create_presenter
      template "presenter", "app/presenters/#{file_name}.rb"
    end
    
    private
    
    def file_name
      "#{underscore}_presenter"
    end
    
    def class_name
      presenter_name.camelize
    end
    
    def underscore
      presenter_name.underscore
    end
  end
end