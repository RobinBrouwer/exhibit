require 'exhibit/helpers'
require 'exhibit/presenter'

module Exhibit
end

if defined?(Rails)
  ActionController::Base.send(:helper, Exhibit::Helpers)
end
