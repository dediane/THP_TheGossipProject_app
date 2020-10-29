class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.references :gossip, index: true, foreign_key: true

      t.timestamps
    end
  end
end
