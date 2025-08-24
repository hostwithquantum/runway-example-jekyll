require 'bundler/setup'
require 'jekyll'

task :serve do
  $stdout.sync = true
  $stderr.sync = true
  Jekyll::Commands::Serve.process({
    'host' => '0.0.0.0',
    'port' => ENV['PORT'] || '5000',
    'verbose' => false,
    'incremental' => false,
    'livereload' => false,
    'show_drafts' => false
  })
end

task default: :serve