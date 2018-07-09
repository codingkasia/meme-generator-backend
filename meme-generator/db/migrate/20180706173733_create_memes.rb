class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :url
      t.integer :user_id
      t.string :page_url

      t.timestamps
    end
  end
end
