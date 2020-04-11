class CreateStaff < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.belongs_to :people
      t.boolean :active, default: true
    end
  end
end
