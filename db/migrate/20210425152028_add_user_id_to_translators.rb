class AddUserIdToTranslators < ActiveRecord::Migration[6.1]
  def change
    add_column :translators, :user_id, :integer
    add_index :translators, :user_id
  end
end
