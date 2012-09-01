class ServicePartner < User
  belongs_to :country
  belongs_to :education
  belongs_to :work_field, :class_name => "Field"
  belongs_to :education_field, :class_name => "Field"
  belongs_to :affiliation
  belongs_to :qualification_test

  has_many :employments
  has_many :jobs, :through => :employments

  validates :name, :presence => true
  validates :surname, :presence => true
  validates :email, :confirmation => true, :presence => true
  validates :email_confirmation, :presence => true

  attr_accessible :city,
                  :is_urban,
                  :education_id, :education,
                  :education_background,
                  :work_experience,
                  :internet_access,
                  :internet_use,
                  :date_of_birth,
                  :education_field_id, :education_field,
                  :work_field_id, :work_field,
                  :affiliation_id, :affiliation,
                  :internet_price,
                  # :active,
                  :work_perspective,
                  :is_female



  #def education
  #  Education.find_by_id(self.education_id)
  #end
  #
  #def country
  #  Country.find_by_id(self.country_id)
  #end

end
