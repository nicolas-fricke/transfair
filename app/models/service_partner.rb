class ServicePartner < ActiveRecord::Base
  belongs_to :country
  belongs_to :education
  attr_accessible :birth_year, :city, :education_background, :email, :internet_access,
                  :internet_use, :is_urban, :name,
                  :phone_number, :surname, :work_experience, :country_id, :education_id

  def full_name
    "#{self.name} #{self.surname}"
  end

  def education
    Education.find_by_id(self.education_id)
  end

  def country
    Country.find_by_id(self.country_id)
  end

end
