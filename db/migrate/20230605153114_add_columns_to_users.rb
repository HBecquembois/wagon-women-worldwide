class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :description, :text
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :mentor, :boolean, default: false
    add_column :users, :batch_number, :integer
    add_column :users, :graduation_year, :integer
    add_column :users, :github_url, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :kitt_username, :string
  end
end
