class CreateLinkVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :link_visits do |t|
      t.text :ip_address
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
