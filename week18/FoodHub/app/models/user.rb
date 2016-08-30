class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :foods
  validates :name, presence:true
  after_create :send_welcome_email

  enum role: [:admin, :foodie, :user]


	def owner_of_food(food)
		self.id == food.user_id
	end


	protected 

	def send_welcome_email
		WelcomeMailer.welcome_email(self).deliver_later
	end



end
