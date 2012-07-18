require 'spec_helper'

describe <%= class_name %>Presenter do
  include ActionView::TestCase::Behavior

  before :all do
    @<%= singular_name %> = <%= class_name %>.new
    @<%= singular_name %>_presenter = <%= class_name %>_presenter.new(@<%= singular_name %>, view)
  end

  # Replace this with your actual tests
  it 'should do something' do
    assert true
  end
end
