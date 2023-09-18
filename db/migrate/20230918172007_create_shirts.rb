class CreateShirts < ActiveRecord::Migration[7.0]
  def change
    create_table :shirts do |t|
      t.string :size
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
