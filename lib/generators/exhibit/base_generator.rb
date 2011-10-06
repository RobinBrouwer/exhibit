module Exhibit
  class BaseGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    
    def copy_exhibit_presenter
      copy_file "exhibit_presenter.rb", "config/initializers/exhibit_presenter.rb"
    end
  end
end