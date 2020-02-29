class ChangePairData < ActiveRecord::Migration[6.0]
  def change
    rename_column :pairs, :topic, :title
    add_column :pairs, :description, :text
  end
end
