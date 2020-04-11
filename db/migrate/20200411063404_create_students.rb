class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.boolean :active, default: true
      t.belongs_to :people
      t.belongs_to :group
    end
  end
end
