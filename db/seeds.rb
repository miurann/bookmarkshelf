tags = Tag.all
bookmarks = Bookmark.all

bookmarks.each do |bookmark|
    BookmarkTag.create!(
      bookmark_id: bookmark.id,
      tag_id: tags.sample.id
    )
  end
