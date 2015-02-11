class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:github, :google_oauth2, :facebook]

  def self.find_for_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first

    case auth.provider
    when "github", "facebook"
      user_name = auth.extra.raw_info.name
      user_email = auth.extra.raw_info.email
    when "google_oauth2"
      user_name = auth.info.name
      user_email = auth.info.email
    end

    unless user
      user = User.create!(
        email:user_email,
        name:user_name,
        provider:auth.provider,
        uid:auth.uid
      )
    end
    user
  end

  # if oauth user account creation failed, fill oauth info into new_user form
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
        user.name = data["name"] if user.name.blank?
        user.email = data["email"] if user.email.blank?
      end

      if data = session["devise.google_data"] && session["devise.google_data"]["info"]
        user.name = data["name"] if user.name.blank?
        user.email = data["email"] if user.email.blank?
      end

      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.name = data["name"] if user.name.blank?
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  # if user login from oauth, email and password can be blank
  def email_required?
    super && provider.blank?
  end

  def password_required?
    super && provider.blank?
  end
end
