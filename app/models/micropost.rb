class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 250 }

  default_scope order: 'microposts.created_at DESC'

def self.search(search)
  search.blank? ? [] : all(:conditions => ['name LIKE ?', "%#{search.strip}%"])
end

end
