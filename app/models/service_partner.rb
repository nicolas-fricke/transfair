class ServicePartner < ActiveRecord::Base
  belongs_to :country
  belongs_to :education
  belongs_to :work_field, :class_name => "Field"
  belongs_to :education_field, :class_name => "Field"
  belongs_to :affiliation
  belongs_to :qualification_test

  has_many :employments
  has_many :jobs, :through => :employments

  attr_accessible :name,
                  :surname,
                  :email,
                  :phone_number,
                  :country_id,
                  :city,
                  :is_urban,
                  :education_id,
                  :education_background,
                  :work_experience,
                  :internet_access,
                  :internet_use,
                  :date_of_birth,
                  :education_field_id,
                  :work_field_id,
                  :affiliation_id,
                  :internet_price,
                  :active,
                  :work_perspective,
                  :is_female

  def full_name
    "#{self.name} #{self.surname}"
  end

  #def education
  #  Education.find_by_id(self.education_id)
  #end
  #
  #def country
  #  Country.find_by_id(self.country_id)
  #end

end
