class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id,:username
  belongs_to :user

  def username
    Object.user.name
  end
end
