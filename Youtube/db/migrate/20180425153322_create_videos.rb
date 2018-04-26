class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :lenght
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
