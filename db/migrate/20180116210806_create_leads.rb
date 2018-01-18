class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :url
      t.string :ip_address
      t.string :source
      t.string :medium
      t.string :term
      t.text :message

      t.timestamps
    end
  end
end
