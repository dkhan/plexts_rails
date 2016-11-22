class CreateEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :id, primary_key: true
      t.datetime :generated_at
      t.string :text
      t.string :plext_type
      t.integer :categories
      t.string :player
      t.string :player_team
      t.string :plain_text
      t.string :portal_name
      t.string :portal_team
      t.string :portal_address
      t.string :portal_lat
      t.string :portal_lng
      t.string :sender
      t.string :sender_team
      t.string :sender_text
      t.string :at_player
      t.string :at_player_team
      t.string :at_player_text

      t.timestamps
    end
  end
end

# ["7b57f50c5a9c457790ec41e14fa8e7b0.d",
#  1479838506436,
#  {"plext"=>
#    {"text"=>
#      "TinMan379 destroyed a Resonator on Prospect Park (83-85 Prospect Street, Shrewsbury, MA 01545, USA)",
#     "markup"=>
#      [["PLAYER", {"plain"=>"TinMan379", "team"=>"RESISTANCE"}],
#       ["TEXT", {"plain"=>" destroyed a Resonator on "}],
#       ["PORTAL",
#        {"name"=>"Prospect Park",
#         "plain"=>
#          "Prospect Park (83-85 Prospect Street, Shrewsbury, MA 01545, USA)",
#         "team"=>"ENLIGHTENED",
#         "latE6"=>42302369,
#         "address"=>"83-85 Prospect Street, Shrewsbury, MA 01545, USA",
#         "lngE6"=>-71711781}]],
#     "plextType"=>"SYSTEM_BROADCAST",
#     "categories"=>1,
#     "team"=>"RESISTANCE"}}]

#   ["f519ecc59cf54a03ae04183e4309015b.d",
#    1479836463408,
#    {"plext"=>
#      {"text"=>"pktslngr: @xxMxPxx I was gonna say!",
#       "markup"=>
#        [["SENDER", {"plain"=>"pktslngr: ", "team"=>"ENLIGHTENED"}],
#         ["TEXT", {"plain"=>""}],
#         ["AT_PLAYER", {"plain"=>"@xxMxPxx", "team"=>"RESISTANCE"}],
#         ["TEXT", {"plain"=>" I was gonna say!"}]],
#       "plextType"=>"PLAYER_GENERATED",
#       "categories"=>1,
#       "team"=>"ENLIGHTENED"}}]
