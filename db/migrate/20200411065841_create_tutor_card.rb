class CreateTutorCard < ActiveRecord::Migration[6.0]
  def change
    create_table :tutor_cards do |t|
      t.string :name
      t.boolean :active, default: true
      t.belongs_to :proffessor
      t.belongs_to :staff
      t.belongs_to :book
      t.datetime :date_of_issuing
      t.datetime :date_of_return
    end
  end
end
