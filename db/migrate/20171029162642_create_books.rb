class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :released_year
      t.string :thumbnail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
