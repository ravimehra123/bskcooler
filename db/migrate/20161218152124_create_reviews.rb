class CreateReviews < ActiveRecord::Migration
  def change
    drop_table :reviews
     create_table :reviews do |t|
       t.string :reviewer_name
       t.string :reviewer_email
       t.string :title
       t.text :description
       t.integer :user_id
       t.integer :product_id

       t.timestamps
     end
  end
end
