class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.datetime :start_date
      t.string :budget
      t.string :brief

      t.timestamps
    end
  end
end
