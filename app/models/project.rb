class Project < ActiveRecord::Base
  belongs_to :account

  has_many :account_associations
  has_many :users, through: :account_associations

  validates_presence_of :name
end
