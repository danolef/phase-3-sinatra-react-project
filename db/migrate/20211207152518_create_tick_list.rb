class CreateTickList < ActiveRecord::Migration[6.1]
  def change
    create_table :tick_lists do |t|
      t.belongs_to :user
      t.belongs_to :climb
      t.boolean :completed
      t.string :beta
    end
  end
end
