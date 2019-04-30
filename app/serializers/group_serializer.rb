class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :website, :address, :region, :contry
end
