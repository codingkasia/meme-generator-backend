class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string  :data
      t.boolean :success
      t.string :url
      t.integer :user_id
      t.string :page_url
      t.integer :template_id
       t.string :username
        t.string :password 
        t.string :text0 
        t.string :text1 

      t.timestamps
    end
  end
end
