class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :test, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
