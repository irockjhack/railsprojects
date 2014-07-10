json.array!(@clark_staffs) do |clark_staff|
  json.extract! clark_staff, :id, :name, :department, :birthday, :gender
  json.url clark_staff_url(clark_staff, format: :json)
end
