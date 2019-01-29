class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
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
