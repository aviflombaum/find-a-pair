class CreatePairs < ActiveRecord::Migration[6.0]
  def change
    create_table :pairs do |t|
      t.string :topic
      t.integer :requestor_user_id
      t.integer :respondor_user_id

      t.timestamps
    end
  end
end
