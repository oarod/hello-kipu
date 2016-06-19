require 'coderay'
require 'find'
require 'json'
require 'sinatra'

get '/home' do
  send_file File.join('public', 'home.html')
end

get '/code' do
  content_type :json

  files = []
  Dir.glob('{*,public/*,spec/*}').each do |entry|
    next if File.directory?(entry)
    files.push({ name: entry, code: CodeRay.scan_file(entry).div(:line_numbers => :table) })
  end

  files.to_json
end
