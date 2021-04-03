class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, default: ''
      t.text :description, default: ''
      t.decimal :price, default: 0.0
      t.boolean :veg, default: true
      t.boolean :available, default:true
      t.boolean :catering, default:true
      t.boolean :featured, default:false

      t.timestamps
    end
  end
end
