class AddJapaneseToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :japanese, :string
  end
end
