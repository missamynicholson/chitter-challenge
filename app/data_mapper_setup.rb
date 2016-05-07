require "data_mapper"
require "dm-postgres-adapter"
require "pg"
require_relative "models/user"

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{ENV["RACK_ENV"]}")
DataMapper.finalize
