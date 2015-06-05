Fabricator(:attendance) do
  user
  present {true}
  created_at {DateTime.now}
  updated_at {DateTime.now}
end
