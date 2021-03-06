class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :published_date
      t.string :author
      t.string :summary
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
