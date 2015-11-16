class User < ActiveRecord::Base
  validates :name, :email, presence: true

  # private
  #
  #   def to_json(options = {})
  #     {user_name: :name}
  #   end
end
