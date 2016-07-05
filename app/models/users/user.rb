class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable,
  :validatable#, :omniauthable
  belongs_to :school
  belongs_to :grove

  def teacher?
    self.class == Teacher
  end
end
