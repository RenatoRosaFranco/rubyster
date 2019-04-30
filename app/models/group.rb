# frozen_string_literal: true
class Group < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	
	self.table_name = 'groups'
	self.primary_key = 'id'

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 70 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 245 }

	validates :website,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 245 }

	validates :address,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :region,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 2, maximum: 145 }

  validates :country,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }
end
