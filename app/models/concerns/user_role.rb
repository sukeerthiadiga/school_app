module UserRole
  extend ActiveSupport::Concern
  ROLES = {
      admin: 'admin',
      parent: 'parent',
      student: 'student',
      child: 'child',
      teacher: 'teacher'
  }
  included do
    ROLES.each do |key, value|
      define_method "is_#{value}".to_sym do
        self.role == value
      end
    end
  end
end