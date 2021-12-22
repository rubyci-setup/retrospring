class MuteRule < ApplicationRecord
  belongs_to :user

  def applies_to?(post)
    !!(post.content =~ /\b#{muted_phrase}\b/i)
  end
end
