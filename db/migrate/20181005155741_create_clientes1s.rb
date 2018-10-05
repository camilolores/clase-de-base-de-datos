class CreateClientes1s < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes1s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
