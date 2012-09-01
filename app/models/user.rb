class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :country
  belongs_to :affiliation

  after_create :send_confirmation_email
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,
                  :name,
                  :surname,
                  :is_female,
                  :phone_number,
                  :country_id, :country,
                  :affiliation_id, :affiliation,
                  :password,
                  :password_confirmation,
                  :remember_me
  # attr_accessible :title, :body

  def full_name
    "#{self.name} #{self.surname}"
  end

  private
    def send_confirmation_email
      UserMailer.registration_confirmation(self).deliver
    end
end
