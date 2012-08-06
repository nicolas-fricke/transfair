class Country < ActiveRecord::Base
  attr_accessible :currency, :name
  has_many :fair_wages
  has_many :clients

  has_and_belongs_to_many :transcription_informations
end

