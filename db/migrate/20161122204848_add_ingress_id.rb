class AddIngressId < ActiveRecord::Migration
  def change
    unless Event.column_names.include? "ingress_id"
      add_column :events, :ingress_id, :string
    end
  end
end
