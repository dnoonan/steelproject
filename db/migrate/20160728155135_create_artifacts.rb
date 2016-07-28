class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.references :user, index: true
      t.string :subject
      t.text :description
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
