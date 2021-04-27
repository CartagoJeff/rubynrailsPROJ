class AddGroupToTranslators < ActiveRecord::Migration[6.1]
  def change
    add_column :translators, :group, :string
  end
end
