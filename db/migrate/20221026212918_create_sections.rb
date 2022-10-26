class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :type
      t.string :content
      t.string :content_size
      t.string :alt_text
      t.string :font_style

      t.timestamps
    end
  end
end
