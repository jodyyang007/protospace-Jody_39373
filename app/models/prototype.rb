class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :concept, presence: true
  validates :catch_copy, presence: true
  validates :image, presence: true
  
  belongs_to :user
  has_one_attached :image
end


#| Column     | Type      | Options                       |#
#| ------     | ------    | ----------------------------- |#
#| title      | string    | null: false                   |#
#| concept    | text      | null: false                   |#
#| catch_copy | text      | null: false                   |#
#| user       | references| null: false,foreign_key: true |#