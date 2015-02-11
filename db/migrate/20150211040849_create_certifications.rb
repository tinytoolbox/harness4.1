class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :type
      t.date :completed_date
      t.date :expiry_date
      t.string :issuer
      t.string :instructor_name
      t.references :user, index: true
      t.string :user_id

      t.timestamps
    end
  end
end
