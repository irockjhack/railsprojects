json.array!(@makati_staffs) do |makati_staff|
  json.extract! makati_staff, :id, :name, :age, :department, :gender
  json.url makati_staff_url(makati_staff, format: :json)
end
