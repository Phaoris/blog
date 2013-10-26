class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :nom
      t.text :contenu

      t.timestamps
    end
  end
end
