class AddUserTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.text :name
      t.text :note
      t.boolean :attending, default: false
      t.string :reservation_url
    end
  end
end
