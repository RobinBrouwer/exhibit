module Exhibit
  class PresenterGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    hook_for :test_framework

    def create_presenter
      template "presenter.rb", "app/presenters/#{file_name}_presenter.rb"
    end
  end
end
