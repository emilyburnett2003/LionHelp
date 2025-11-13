class UserAccount < ActiveRecord::Base
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: { message: "email already exists" }
  validate :is_columbia_email

  def is_columbia_email
    if email.blank?
      return
    end
    unless self.email.match?(/^[A-Za-z]{2,3}\d{4}@(columbia|barnard)\.edu$/)
      errors.add(:email, "must be a valid Columbia or Barnard email address")
    end
  end
end
