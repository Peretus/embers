class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :user, index: true
      t.references :path, index: true

      t.timestamps
    end
  end
end
