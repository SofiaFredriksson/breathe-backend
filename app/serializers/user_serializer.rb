class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :password_digest, :reflection_count, :total_activity_time

  has_many :reflections

end
