class AddUserStoryFieldsToArtifact < ActiveRecord::Migration
  def change
    add_column :artifacts, :perspective, :string
    add_column :artifacts, :want, :text
    add_column :artifacts, :so_that, :text
  end
end
