class FixColumnNameCampsiteTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :campsites, :type, :category
  end
end
