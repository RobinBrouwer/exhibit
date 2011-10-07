module Exhibit
  class PresenterGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    argument :presenter_name, :type => :string
    class_option :no_namespace, :type => :boolean, :default => false
    
    def create_presenter
      template "presenter.rb", "app/presenters/#{file_name}.rb"
    end
    
    private
    
    def file_name
      "#{singular_name}_presenter"
    end
    
    def singular_name
      if options[:no_namespace]
        presenter_name.underscore.split('/').last
      else
        presenter_name.underscore
      end
    end
    
    def class_name
      singular_name.camelize
    end
    
    def exhibit_name
      if options[:no_namespace]
        presenter_name.underscore.split('/').last
      else
        presenter_name.underscore.gsub('/', '_')
      end
    end
  end
end