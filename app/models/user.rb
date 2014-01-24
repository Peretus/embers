class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  has_many :decks
  has_many :enrollments
  has_many :paths, through: :enrollments
  has_many :known_facts
  has_many :facts, through: :known_facts

  after_create :add_path

  def add_path
    self.enrollments.create(path_id: 1)
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      if user
        return user
      else
        registered_user = User.where(:email => auth.info.email).first
        if registered_user
          return registered_user
        else
          user = User.create(name:auth.extra.raw_info.name,
                              provider:auth.provider,
                              uid:auth.uid,
                              email:auth.info.email,
                              password:Devise.friendly_token[0,20],
                            )
        end    
      end
    end
end
