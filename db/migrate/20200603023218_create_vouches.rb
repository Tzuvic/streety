class CreateVouches < ActiveRecord::Migration[6.0]
  def change
    create_table :vouches do |t|
      t.text :content
      t.references :voucher, index: true, foreign_key: { to_table: :users }
      t.references :vouchee, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
