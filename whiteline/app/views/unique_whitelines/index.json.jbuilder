json.array!(@unique_whitelines) do |unique_whiteline|
  json.extract! unique_whiteline, :id, :softbank_phone_number
  json.url unique_whiteline_url(unique_whiteline, format: :json)
end
