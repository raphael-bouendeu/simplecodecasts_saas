class AddStripeCustomerTokenToUsers < ActiveRecord::Migration[6.1]
  def change
  add_column :users, :stripe_card_token, :string

  end
end
