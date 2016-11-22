class AddPlextTeam < ActiveRecord::Migration
  def change
    unless Event.column_names.include? "team"
      add_column :events, :team, :string
    end
  end
end
