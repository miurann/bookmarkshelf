200.times do |index|
  Bookmark.create!(
      user: User.first,
      title: "ブクマタイトル#{index}",
      url: "http://xx#{index}.com",
      memo: "ブクマメモ#{index}"
  )
end
