Fabricator(:message) do
  username { Faker::Internet.user_name }
  content  { Faker::Lorem.sentence }
  sended_at { Time.now }
  channel { Fabricate(:channel) }
end
