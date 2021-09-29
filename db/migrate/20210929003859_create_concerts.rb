class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :concert_title
      t.string :venue
      t.string :date
      t.string :genre
      t.string :comment

      t.timestamps
    end
  end
end
