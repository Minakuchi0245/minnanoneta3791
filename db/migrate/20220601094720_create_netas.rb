class CreateNetas < ActiveRecord::Migration[6.0]
  def change
    create_table :netas do |t|
      t.string     :title,                null: false
      t.text       :text,                 null: false
      t.integer    :category_id,          null: false
      t.integer    :theme_id,             null: false
      t.integer    :who_id,               null: false
      t.references :user,                 null: false, foreign_key: true


      t.timestamps
    end
  end
end
