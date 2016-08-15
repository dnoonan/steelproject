class Attachment < ActiveRecord::Base
  belongs_to :user
  belongs_to :artifact

  acts_as_paranoid
  audited
  acts_as_taggable_on :tags


end
