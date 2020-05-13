class CreateGraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :graphs do |t|
      t.string :name
      t.string :info_url
      t.string :screenshot_url

      t.timestamps
    end
  end
end
