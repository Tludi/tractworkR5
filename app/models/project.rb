class Project < ActiveRecord::Base
  belongs_to :account

  has_many :account_associations
  has_many :users, through: :account_associations
  # accepts_nested_attributes_for :account_associations

  validates_presence_of :name

  def notProjectUsers
    account = self.account
    accountUsers = self.account.users
    currentProjectUsers = self.users
    accountUsers - currentProjectUsers
  end


end
