class Reply

  include DataMapper::Resource

  property :id,         Serial 
  property :content,    Text
  property :time_stamp, DateTime

  belongs_to :peep
  
end