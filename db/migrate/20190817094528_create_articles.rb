class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :description
      t.string :content
      t.string :date
      t.string :photo

      t.timestamps
    end
  end
end
