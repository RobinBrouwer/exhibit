module Exhibit
  class PresenterGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    argument :presenter_name, :type => :string
    class_option :no_namespace, :type => :boolean, :default => false
    class_option :testunit, :type => :boolean, :default => false
    class_option :rspec, :type => :boolean, :default => true
    
    def create_presenter
      template "presenter.rb", "app/presenters/#{file_name}.rb"
    end
    
    def create_tests
      if test_framework == :rspec
        template "presenter_spec.rb", "spec/presenters/#{file_name}_spec.rb"
      else
        template "presenter_test.rb", "test/unit/presenters/#{file_name}_test.rb"
      end
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
    
    def test_framework
      return @test_framework if defined?(@test_framework)
      if options.testunit?
        return @test_framework = :testunit
      elsif options.rspec?
        return @test_framework = :rspec
      else
        return @test_framework = default_test_framework
      end
    end

    def default_test_framework
      File.exist?(destination_path("spec")) ? :rspec : :testunit
    end
    
    def destination_path(path)
      File.join(destination_root, path)
    end
  end
end