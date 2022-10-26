class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, presence: true
      t.string :description, presence: true
      t.timestamps
    end
  end
end
