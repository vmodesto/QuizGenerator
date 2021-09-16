class CreateQuizResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_responses do |t|
      t.string :response
      t.references :quiz_id, null: false, foreign_key: true
      t.boolean :is_right

      t.timestamps
    end
  end
end
