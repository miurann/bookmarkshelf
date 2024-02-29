  crumb :bookmarks do
    link "ブックマーク一覧", bookmarks_path
  end

  crumb :bookmark do |bookmark|
    link "ブックマーク詳細", bookmark_path(bookmark)
    parent :bookmarks
  end

  crumb :edit_bookmark do |bookmark|
    link "ブックマーク編集"
    parent :bookmark, bookmark
  end

  crumb :create_bookmark do |bookmark|
    link "ブックマーク登録"
    parent :bookmarks
  end
