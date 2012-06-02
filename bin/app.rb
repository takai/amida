require 'bundler/setup'

require 'slop'
require 'amida'


opts = Slop.parse do
  banner "ruby -Ilib bin/app.rb [options]"
  on :c, :column=, 'Number of columns', :as => :int
  on :r, :row=, 'Number of rows', :as => :int
  on :h, :help, 'Print this message'
end

if opts.help?
  puts opts.help
  exit 1
end

column = opts[:column] || 18
row    = opts[:row] || 9

Amida::App.new.run(row, column)
