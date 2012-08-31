class Category < ActiveRecord::Base
  has_many :transcription_informations

  attr_accessible :name
end
