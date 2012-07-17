module Shoulda
  class PresenterGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def create_test_file
      template 'presenter_test.rb', File.join('test/unit/presenters', "#{singular_name}_presenter_test.rb")
    end
  end
end
