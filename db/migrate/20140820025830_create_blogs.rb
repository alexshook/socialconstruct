class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :type
      t.string :url
      t.string :feed_url
      t.references :member, index: true

      t.timestamps
    end
  end
end
