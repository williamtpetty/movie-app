class ChangeAgeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :actors, :age, :string
  end
end
