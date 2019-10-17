class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.json :additional_attributes
      t.references :user, foreign_key: true
      t.references :event_type, foreign_key: true

      t.timestamps
    end
  end
end
