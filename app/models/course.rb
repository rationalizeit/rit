class Course < ActiveRecord::Base
  validates_presence_of :name, :price, :message => "can't be blank"
end
