class User < ActiveRecord::Base
  attr_accessible :password, :username
  attr_reader :password
  
  has_many(
    :completed_lessons, 
    :class_name => "Lesson", 
    :foreign_key => :user_id,
    :primary_key => :id
  )
  
  validates :password_digest, :presence => { :message => "Password can't be blank" }
  validates :password, :length => { :minimum => 6, :allow_nil => true }
  validates :session_token, :presence => true
  validates :username, :presence => true
  
  after_initialize :ensure_session_token
  
  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    
    return nil if user.nil?
    
    user.is_password?(password) ? user : nil
  end
  
  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
  
  def is_password?(password)              
BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  def reset_session_token
    self.session_token = self.class.generate_session_token
    self.save!
  end
  
  # def as_json(options={})
  #   options.merge!(
  #     :include => {
  #       :projects => {
  #         :include => :tasks
  #       },
  #       :teams => {
  #         :include => {
  #           :projects => { :include => :tasks },
  #           :members => { :only => [:username, :id] }
  #         }
  #       }
  #     }
  #   )
  #   super(options)
  # end
  
  private
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
