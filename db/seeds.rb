# coding: utf-8

50.times do |no|
  Post.create!(:body => "投稿_#{no + 1}")
end
