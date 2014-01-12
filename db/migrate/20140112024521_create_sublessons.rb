class CreateSublessons < ActiveRecord::Migration
  def change
    create_table :sublessons do |t|
      t.string :title

      t.timestamps
    end
  end
end
