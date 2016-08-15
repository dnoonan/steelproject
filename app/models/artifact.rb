class Artifact < ActiveRecord::Base
  belongs_to :user
  has_many :attachments

  acts_as_paranoid
  audited
  acts_as_taggable_on :queue, :backlog, :product, :department, :team, :tags

  
end
