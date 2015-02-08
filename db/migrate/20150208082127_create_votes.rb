class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :store, index: true
      t.string :ip_address, limit: 15

      t.timestamps null: false
    end
  end
end
