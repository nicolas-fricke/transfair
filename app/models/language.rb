class Language < ActiveRecord::Base
  attr_accessible :name
  has_many :jobs
  has_many :qualification_tests
  validates :name, :presence => true
end
