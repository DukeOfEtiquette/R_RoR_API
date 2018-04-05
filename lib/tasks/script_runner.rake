desc "Runs an external ruby script"
task :run_ruby => :environment do
	filepath = Rails.root.join('lib', 'scripts', 'run_script.rb')
	output = `ruby #{filepath}`
	puts output
end

task :hello_world_r => :environment do
	puts "Running R!"
	filepath = Rails.root.join('lib', 'scripts', 'hello_world.R')
	output = `Rscript --vanilla #{filepath}`
	puts output
end