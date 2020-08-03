class User < ApplicationRecord
  has_one :cv
  has_many :cv_languages
  has_many :experiences
  has_many :cv_skill
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create do
    Cv.create(user_id: self.id)
  end
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         # :confirmable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  def self.from_omniauth(auth)
    result = User.where(email: auth.info.email).first
    if result
      return result
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.fullname = auth.info.name
        user.image = auth.info.image
        user.uid = auth.uid
        user.provider = auth.provider

        #  If you are using confirmable and the provider(s) you use validate emails
        # user.skip_confirmation!
      end
    end
  end
  enum sex: { Male: 1, Female: 0 }
end

