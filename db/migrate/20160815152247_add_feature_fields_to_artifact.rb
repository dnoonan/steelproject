class AddFeatureFieldsToArtifact < ActiveRecord::Migration
  def change
    add_column :artifacts, :need, :string
    add_column :artifacts, :impact, :string
    add_column :artifacts, :approved, :boolean
  end
end
