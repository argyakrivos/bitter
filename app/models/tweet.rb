class Tweet
  include MongoMapper::Document

  belongs_to :user

  key :message, String

  validates_length_of :message, :within => 1..120,
  	:too_long => "pick a shorter tweet",
  	:too_short => "pick a longer tweet"

end
