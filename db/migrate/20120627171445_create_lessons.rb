class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :course_id
      t.string :course_day
      t.string :video
      t.string :quiz

      t.timestamps
    end
  end
end
