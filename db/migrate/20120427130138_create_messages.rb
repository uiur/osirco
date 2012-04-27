class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :username
      t.text :content
      t.datetime :sended_at
      t.references :channel

      t.timestamps
    end
    add_index :messages, :channel_id
  end
end
