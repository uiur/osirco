Fabricator(:channel) do
  name { %w(#hoge #fuga #poyo).sample }
  host { 'google.com' }
end
