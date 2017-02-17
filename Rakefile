require 'shellwords'

TASKS = %w(default rubocop spec clean clobber)
SUBRAKES = FileList.new('*/Rakefile').pathmap('%d')

$stdin.sync = true
$stdout.sync = true

parent_dir = ENV['_RAKE_SUB_DIR'] ||= '.'

TASKS.each do |t|
  SUBRAKES.each do |r|
    task t do
      Dir.chdir(r) do
        sh "#{$PROGRAM_NAME} _RAKE_SUB_DIR=#{parent_dir}/#{r} #{ARGV.shelljoin}"
      end
    end
  end
end
