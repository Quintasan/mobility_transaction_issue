class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :welcome_text
      t.string :finish_text
      t.jsonb :translations

      t.timestamps
    end
  end
end
