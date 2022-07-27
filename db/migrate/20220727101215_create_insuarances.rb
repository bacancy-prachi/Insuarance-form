class CreateInsuarances < ActiveRecord::Migration[7.0]
  def change
    create_table :insuarances do |t|
      t.string :first_name
      t.text :address
      t.string :last_name
      t.bigint :postal_code
      t.string :email
      t.string :city
      t.bigint :phone
      t.string :province
      t.bigint :municipla_evaluation_of_property
      t.string :insuarance_premium
      t.boolean :language
      t.string :second_home_owner
      t.string :third_home_owner
      t.string :type_of_property
      t.boolean :present_owner
      t.date :purchase_date
      t.integer :lot_number
      t.boolean :bound_by_water
      t.boolean :ensure_municipal_water_sewer
      t.boolean :ensure_property
      t.boolean :client_knowledge
      t.text :note
      t.string :referral_agent_name
      t.string :referral_agent_email

      t.timestamps
    end
  end
end
