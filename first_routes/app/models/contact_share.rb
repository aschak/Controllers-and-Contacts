class ContactShare < ActiveRecord::Base
  validate :user_id, :contact_id, presence: true
  validate :contact_id, uniqueness: {scope: :user_id}

  belongs_to :user
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  belongs_to :contact
    primary_key: :id,
    foreign_key: :contact_id,
    class_name: "Contact"

end
