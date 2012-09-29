class User
  include MongoMapper::Document

  key :name, String
  key :email, String

  validates_length_of :name, :within => 3..40
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
