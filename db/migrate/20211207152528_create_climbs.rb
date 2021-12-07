class CreateClimbs < ActiveRecord::Migration[6.1]
  def change
    create_table :climbs do |t|
      t.belongs_to :user
      t.string :name
      t.string :grade
      t.string :climb_type
      t.string :location
      t.string :mt_project_link
    end
  end
end
