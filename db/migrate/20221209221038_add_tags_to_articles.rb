class AddTagsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :tags, :string
  end
end
