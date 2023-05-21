class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :genre_id
      t.string :image
      t.integer :author_id

      t.timestamps
    end
  end
end
