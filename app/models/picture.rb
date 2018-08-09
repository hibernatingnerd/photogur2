class Picture < ApplicationRecord
  validates :title, :artist, :url, presence:true
  validates :title, length:{in: 3..100}
  validates :url, uniqueness:true

  has_many :comments
  belongs_to :user




  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_four
    Picture.newest_first.limit(4)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.created_in_year(year)
    Picture.where("created_at LIKE ?", "#{year}%")
  end

end
