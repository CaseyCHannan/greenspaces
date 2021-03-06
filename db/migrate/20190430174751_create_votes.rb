class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.belongs_to :review
      t.belongs_to :user
      t.integer :thumbs, null: false

      t.timestamps
    end
  end
end
