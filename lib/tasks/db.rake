namespace :db do
  namespace :populate do
    desc 'load test data'
    task :data => :environment do
      channels = ['#hoge', '#fuga', '#piyo'].map {|name| Fabricate(:channel, name: name) }
      channels.each do |channel|
        100.times do
          Fabricate(:message, channel: channel)
        end
      end
    end
  end
end
