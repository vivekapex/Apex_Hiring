class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, presence: true
  validates :mobile, :numericality => true, presence: true, length: { maximum: 10, minimum: 10 }

  after_create :generate_user_token
  has_many :submissions, :dependent => :destroy

  def generate_user_token
  	_rand_token = SecureRandom.hex(6)
  	_user = User.find(self.id)
    _user.update(user_token: _rand_token)
  end
end
