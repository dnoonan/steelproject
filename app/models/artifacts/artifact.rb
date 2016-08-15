class Artifact < ActiveRecord::Base
  belongs_to :user
  has_many :attachments

  acts_as_paranoid
  audited
  acts_as_taggable_on :queue, :backlog, :product, :department, :team, :tags

  scope :bugs, -> { where(type: 'Bug') } 
  scope :features, -> { where(type: 'Feature') } 
  scope :user_stories, -> { where(type: 'UserStory') } 
  scope :sprints, -> { where(type: 'Sprint') } 
	

  def self.types
    %w(Bug Feature UserStory Sprint)
  end

end
