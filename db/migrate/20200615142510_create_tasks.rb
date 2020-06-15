class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.boolean :seen
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
