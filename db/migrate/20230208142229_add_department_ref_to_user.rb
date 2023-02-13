class AddDepartmentRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :departments, null: false, foreign_key: true
  end
end
