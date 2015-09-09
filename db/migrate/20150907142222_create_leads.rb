class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :lastName
      t.string :company
      t.string :title
      t.string :phone
      t.string :website
      t.string :email
      t.timestamps
    end
  end
end
