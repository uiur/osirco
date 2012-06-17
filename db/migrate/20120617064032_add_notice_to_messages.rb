class AddNoticeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :notice, :boolean, default: false
  end
end
