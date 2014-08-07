env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require_relative 'models/peep'
require_relative 'models/user'
require_relative 'models/reply'

DataMapper.finalize


# Run "DataMapper.auto_migrate!" to reboot database
DataMapper.auto_migrate!



