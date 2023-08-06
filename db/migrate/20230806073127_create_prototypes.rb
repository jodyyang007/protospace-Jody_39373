class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :concept
      t.text :catch_copy
      t.references :user
      t.timestamps
    end
  end
end

#| Column     | Type      | Options                       |#
#| ------     | ------    | ----------------------------- |#
#| title      | string    | null: false                   |#
#| concept    | text      | null: false                   |#
#| catch_copy | text      | null: false                   |#
#| user       | references| null: false,foreign_key: true |#
