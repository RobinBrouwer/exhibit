require 'test_helper'

class <%= class_name %>PresenterTest < ActionView::TestCase
  context "a presenter for <%= class_name %>" do
    setup do
      @<%= singular_name %> = <%= class_name %>.new
      @<%= singular_name %>_presenter = <%= class_name %>Presenter.new(@<%= singular_name %>, view)
    end

    # Replace this with your actual tests
    should "do something" do
      assert true
    end
  end
end
