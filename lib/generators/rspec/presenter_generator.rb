module Rspec
  class PresenterGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def create_test_file
      template 'presenter_spec.rb', File.join('spec/presenters', "#{singular_name}_presenter_spec.rb")
    end
  end
end
