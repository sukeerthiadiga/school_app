class User < ActiveRecord::Base
  #Include Module #
  include UserRole

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations #
  has_one :school
  has_many :courses
  has_many :student_classes, foreign_key: :student_id
  has_many :klasses, through: :student_classes, foreign_key: :student_id
  has_many :klasses, foreign_key: :teacher_id

  # Callbacks #
  after_create :build_new_school

  # Methods #
  def build_new_school
    if is_admin
      create_school(title: 'Test School', description: 'Test', address: 'Test data')
    end
  end

end
