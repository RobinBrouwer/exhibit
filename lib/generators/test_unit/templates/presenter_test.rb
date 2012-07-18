require 'test_helper'

class <%= class_name %>PresenterTest < ActionView::TestCase
  def setup
    @<%= singular_name %> = <%= class_name %>.new
    @<%= singular_name %>_presenter = <%= class_name %>_presenter.new(@<%= singular_name %>, view)
  end

  test "should do something" do
    assert true
  end
end
