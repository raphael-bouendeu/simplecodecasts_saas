class AddMetadataIdToPlan < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :stripe_id, :string
  end
end
