class CreateAuthSessions < ActiveRecord::Migration
  def change
    create_table :auth_sessions do |t|
      t.integer :user_id
      t.string :token
      t.boolean :active
      t.string :user_agent
      t.string :last_ip

      t.timestamps
    end
  end
end
