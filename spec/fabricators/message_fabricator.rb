Fabricator(:message) do
  username { Faker::Internet.user_name }
  content  { Faker::Lorem.sentence }
  sended_at { [*(1..100)].sample.days.ago }
  channel { Fabricate(:channel) }
end
