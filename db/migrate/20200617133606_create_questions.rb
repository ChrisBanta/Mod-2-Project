class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :number
      t.string :text
      t.string :formula

      t.timestamps
    end
  end
end
