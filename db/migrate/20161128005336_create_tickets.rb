class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.string :contact
      t.text :comment
      t.text :admin_comment
      t.boolean :resolved, :default => false

      t.timestamps
    end
  end
end