class CreateProffessor < ActiveRecord::Migration[6.0]
  def change
    create_table :proffessors do |t|
      t.boolean :active, default: true

      t.belongs_to :people
    end
  end
end
