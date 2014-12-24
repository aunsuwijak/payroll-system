class CreateCompensations < ActiveRecord::Migration
  def change
    create_table :compensations do |t|
      t.references :employee, index: true
      t.string :kind
      t.float :amount

      t.timestamps
    end
  end
end
