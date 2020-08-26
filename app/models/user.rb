class User < ApplicationRecord
  enum sex: { Unknow: 0, Male: 1, Female: 2 }

  has_one :cv
  has_one :profile
  has_one :company
  has_many :cv_skill
  has_many :jobs
  has_many :experiences
  has_many :applyjobs, dependent: :destroy
  has_many :applied, through: :applyjobs, source: :job
  has_many :members, dependent: :destroy
  has_many :companies, through: :members, source: :company
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked, through: :bookmarks, source: :job

  idUser = "select user_id from members where company_id = ?"
  scope :user_member, -> (id){User.where("id not in(#{idUser})",id)}
  has_one_attached :image

  after_create do
    Cv.create(user_id: self.id)
    Profile.create(user_id: self.id)
  end

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
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
      end
    end
  end

  # def self.ransackable_scopes(auth_object = nil)
  #   %i(user_member)
  # end
end

