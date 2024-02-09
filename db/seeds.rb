30.times do |index|
  Bookmark.create!(
      user: User.first,
      title: Faker::JapaneseMedia::StudioGhibli.movie,
      url: "http://xx#{index}.com",
      memo: Faker::JapaneseMedia::StudioGhibli::character
  )
end
