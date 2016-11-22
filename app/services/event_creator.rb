class EventCreator
  attr_reader :raw_event

  def initialize(raw_event)
    @raw_event = raw_event
  end

  def create
    event = Event.new
    event.ingress_id = event_id
    event.generated_at = generated_at
    event.text = text
    event.plext_type = plext_type
    event.categories = categories
    event.team = team

    if plext_type == "SYSTEM_BROADCAST"
      event.player = player
      event.player_team = player_team
      event.plain_text = plain_text
      event.portal_name = portal_name
      event.portal_team = portal_team
      event.portal_address = portal_address
      event.portal_lat = portal_lat
      event.portal_lng = portal_lng
    elsif plext_type == "PLAYER_GENERATED"
      event.sender = sender
      event.sender_team = sender_team
      event.sender_text = sender_text
      event.at_player = at_player
      event.at_player_team = at_player_team
      evnet.at_player_text = at_player_text
    else
      Rails.logger.info "New plext_type: #{plext_type}\n#{raw_event.inspect}"
    end
    pp event.attributes.sort
  end

  def event_id
    raw_event[0]
  end

  def generated_at
    DateTime.strptime((raw_event[1]/1000).to_s, '%s')
  end

  def text
    raw_event[2]["plext"]["text"]
  end

  def plext_type
    raw_event[2]["plext"]["plextType"]
  end

  def categories
    raw_event[2]["plext"]["categories"]
  end

  def team
    raw_event[2]["plext"]["team"]
  end

  def player
    raw_event[2]["plext"]["markup"][0][1]["plain"]
  end

  def player_team
    raw_event[2]["plext"]["markup"][0][1]["team"]
  end

  def plain_text
    raw_event[2]["plext"]["markup"][1][1]["plain"]
  end

  def portal_name
    raw_event[2]["plext"]["markup"][2][1]["name"]
  end

  def portal_team
    raw_event[2]["plext"]["markup"][2][1]["team"]
  end

  def portal_address
    raw_event[2]["plext"]["markup"][2][1]["address"]
  end

  def portal_lat
    (raw_event[2]["plext"]["markup"][2][1]["latE6"]/1000000.0).to_s
  end

  def portal_lng
    (raw_event[2]["plext"]["markup"][2][1]["lngE6"]/1000000.0).to_s
  end

  def sender
    raw_event[2]["plext"]["markup"][0][1]["plain"]
  end

  def sender_team
    raw_event[2]["plext"]["markup"][0][1]["team"]
  end

  def sender_text
    raw_event[2]["plext"]["markup"][1][1]["plain"]
  end

  def at_player
    raw_event[2]["plext"]["markup"][2][1]["plain"]
  end

  def at_player_team
    raw_event[2]["plext"]["markup"][2][1]["team"]
  end

  def at_player_text
    raw_event[2]["plext"]["markup"][3][1]["plain"]
  end

end
