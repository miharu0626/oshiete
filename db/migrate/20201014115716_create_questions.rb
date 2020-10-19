class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :user,    null: false, foreign_key: true
      t.references :recipe,  null: false, foreign_key: true
      t.text :text, null: false
      t.timestamps
    end
  end
end
