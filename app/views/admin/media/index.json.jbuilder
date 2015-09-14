json.array!(@images) do |image|
  json.title image.title
  json.value image.file.url(:large)
end
