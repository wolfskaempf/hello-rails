class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  default_scope { order(created_at: :desc) } # We want our blog to show the newest article in front, so we order them in reverse by default
end
