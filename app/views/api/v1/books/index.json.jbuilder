json.array! @books do |book|
  json.extract! book, :title, :description, :author, :released_year, :thumbnail
end
