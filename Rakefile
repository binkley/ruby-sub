require 'shellwords'

TASKS = %w{default spec clean clobber}
SUBRAKES = FileList.new('*/Rakefile').pathmap('%d')

$stdin.sync = true
$stdout.sync = true

TASKS.each do |t|
  SUBRAKES.each do |r|
    task t do
      Dir.chdir(r) do
        puts "(Moving into #{r})"
        sh "#{$0} #{ARGV.shelljoin}"
      end
    end
  end
end
