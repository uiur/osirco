class RemoveHostFromChannels < ActiveRecord::Migration
  def up
    remove_column :channels, :host
  end

  def down
    add_column :channels, :host, :string
  end
end
