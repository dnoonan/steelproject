class Artifact < ActiveRecord::Base
  belongs_to :user
  has_many :attachments

  acts_as_paranoid
  audited

  
end
