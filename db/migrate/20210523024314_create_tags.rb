class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :content, null: false  
      t.references :post, null: false, foreign_key: true  

      t.timestamps
    end
  end
end
