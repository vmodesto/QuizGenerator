class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.references :quiz_list, null: false, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
