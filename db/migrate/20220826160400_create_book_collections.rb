class CreateBookCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :book_collections do |t|
      t.string :title
      t.string :author
      t.decimal :price
      t.date :publishdate

      t.timestamps
    end
  end
end
