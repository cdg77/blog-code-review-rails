class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :description, :string
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
