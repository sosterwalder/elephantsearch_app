class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :quest
      t.text :answer

      t.timestamps
    end
  end
end
