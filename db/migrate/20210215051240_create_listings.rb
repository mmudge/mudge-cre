class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.boolean :for_lease, default: true

      t.timestamps
    end
  end
end
