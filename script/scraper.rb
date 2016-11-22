# Boston-Worcester-Nashua
# ./bin/plexts -c --minlat 41.870789 --minlng -71.908264 --maxlat 42.955620 --maxlng -69.829102

minLatE6 = 41.870789
minLngE6 = -71.908264
maxLatE6 = 42.955620
maxLngE6 = -69.829102

# res = Plexts.get_plexts(minLatE6, minLngE6, maxLatE6, maxLngE6, -1, 'all')
# res = Plexts.to_console(minLatE6, minLngE6, maxLatE6, maxLngE6, -1, tab='all')

all_res = []

min_time = 5.hour.ago.to_i * 1000
max_time = Time.now.to_i * 1000

time = max_time
while time > min_time do
  res = Plexts.to_console(minLatE6, minLngE6, maxLatE6, maxLngE6, time, tab='all')
  all_res.unshift(*res)
  time = res.first[1] - 1
end

all_res.each_with_index do |r, i|
  lat, lng = ''
  if r[2]['plext']['plextType'] == "SYSTEM_BROADCAST"
    lat = r[2]['plext']['markup'][2][1]['latE6']
    lng = r[2]['plext']['markup'][2][1]['lngE6']
  end
  puts "#{i} #{ DateTime.strptime((r[1]/1000).to_s,'%s')} #{r[2]['plext']['text']} #{lat},#{lng}"
  break if i == 1000
end;1
