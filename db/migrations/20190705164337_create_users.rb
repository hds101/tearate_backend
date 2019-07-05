Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :username, String

      column :email, String, null: false
      column :password, String, null: false

      column :superadmin, TrueClass, null: false, default: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
