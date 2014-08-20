class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :snippet
      t.string :url
      t.string :image_url
      t.references :blog, index: true

      t.timestamps
    end
  end
end
