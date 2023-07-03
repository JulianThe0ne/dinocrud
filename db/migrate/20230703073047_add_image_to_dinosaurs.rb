class AddImageToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :image, :string
  end
end
