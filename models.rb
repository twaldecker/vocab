class Word
  include DataMapper::Resource

  property :id,         Serial
  property :word,       Text
  property :time,       Text
  property :created_at, DateTime

  belongs_to :language
end

class Language
  include DataMapper::Resource

  property :id,      Serial
  property :name,    Text
  property :short,   Text

  has n, :words
end
