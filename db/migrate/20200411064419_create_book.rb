class CreateBook < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name, null: false, default: ''
      t.belongs_to :author
      t.belongs_to :publishing
      t.boolean :active, default: true
    end
  end
end
