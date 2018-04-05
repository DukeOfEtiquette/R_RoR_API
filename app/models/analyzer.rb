require 'rake'
#load './lib/tasks/scripts/script_runner.rake'
#load Rails.root.join('lib', 'tasks', 'script_runner.rake')
TestingRApp::Application.load_tasks

class Analyzer 
  def run
    puts "##############"
    puts "ANALYZER RUNINNG"
    puts "##############"
    
    output = Rake::Task['hello_world_r'].invoke
    
    return output
  end
end