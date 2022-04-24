class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:github]

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #   user.email = auth.info.email
  #   user.password = Devise.friendly_token[0, 20]
  #   user.name = auth.info.name # assuming the user model has a name
  #   user.username = auth.info.nickname
  #   user.profile_image = auth.info.image
  #   # assuming the user model has a username
  #   #user.image = auth.info.image # assuming the user model has an image
  #   # If you are using confirmable and the provider(s) you use validate emails,
  #   # uncomment the line below to skip the confirmation emails.
  #   user.skip_confirmation!
  #   end
  # end

  def email_required?
    false
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
        user = User.create(
           name: data['name'],
           email: data['Email'],
           password: Devise.friendly_token[0,20],
           profile_image: data['image'],
           username: data['nickname']
        )
    end
    user
  end

  has_many :posts
end
