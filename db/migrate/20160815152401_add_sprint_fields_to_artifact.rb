class AddSprintFieldsToArtifact < ActiveRecord::Migration
  def change
    add_column :artifacts, :sprint_title, :string
    add_column :artifacts, :start, :date
    add_column :artifacts, :end, :date
  end
end
