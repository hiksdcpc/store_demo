class AddCounterCacheToStore < ActiveRecord::Migration
  def change
    add_column :stores, :votes_count, :integer, default: 0
  end
end
