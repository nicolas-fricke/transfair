class Country < ActiveRecord::Base
  has_many :fair_wages
  has_many :users

  has_and_belongs_to_many :transcription_informations

  attr_accessible :currency,
                  :name
end

