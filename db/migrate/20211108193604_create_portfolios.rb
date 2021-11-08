class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :main_image
      t.string :thumb_image

      t.timestamps
    end
  end
end
