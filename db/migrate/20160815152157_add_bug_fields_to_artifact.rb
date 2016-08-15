class AddBugFieldsToArtifact < ActiveRecord::Migration
  def change
    add_column :artifacts, :severity, :string
    add_column :artifacts, :steps_to_reproduce, :text
    add_column :artifacts, :workaround_available, :boolean
  end
end
