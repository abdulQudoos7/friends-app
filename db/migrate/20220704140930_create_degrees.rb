class CreateDegrees < ActiveRecord::Migration[7.0]
  def change
    create_table :degrees do |t|
      t.string :degree_name
      t.string :description

      t.timestamps
    end
  end
end
