class Photo
  include CouchPotato::Persistence
  
  property :tags
  property :title
  
  validates_presence_of :title
  
  attr_accessor :tags_string
  
  before_create :extract_tags
  
  private
  
  def extract_tags
    self.tags = tags_string.to_s.split(/\s+/)
  end
end