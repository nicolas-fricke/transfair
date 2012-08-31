class Language < ActiveRecord::Base
  has_many :jobs
  has_many :qualification_tests
  validates :name, :presence => true

  attr_accessible :name
end
