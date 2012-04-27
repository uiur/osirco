namespace :db do
  namespace :populate do
    desc 'load test data'
    task :data => :environment do
      channels = ['#hoge', '#fuga', '#piyo'].map {|name| Fabricate(:channel, name: name) }
      channels.each do |channel|
        100.times do
          Fabricate(:message, channel: channel, sended_at: [*(1..100)].sample.days.ago)
        end
      end
    end
  end
end
