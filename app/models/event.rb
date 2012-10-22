class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_localization, :event_name
end
