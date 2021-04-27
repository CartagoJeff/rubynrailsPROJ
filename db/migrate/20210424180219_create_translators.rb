class CreateTranslators < ActiveRecord::Migration[6.1]
  def change
    create_table :translators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :discord
      t.string :twitter
      t.string :kofi

      t.timestamps
    end
  end
end
