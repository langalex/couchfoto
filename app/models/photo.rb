class Photo
  include CouchPotato::Persistence
  
  class Tag < Struct.new(:name, :count); end
  
  view :by_title, key: :title
  view :tag_cloud, type: :raw, map: 'function(doc) {if(doc.ruby_class == \'Photo\' && doc.tags) {doc.tags.forEach(function(tag) {emit(tag, 1)})}}', reduce: 'function(keys, values) {return(sum(values))}', group: true, results_filter: lambda{|rows| rows['rows'].map{|row| Tag.new(row['key'], row['value'])}}
  
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