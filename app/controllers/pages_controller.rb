require 'rinruby'

class PagesController < ApplicationController
  def index
    analyzer = Analyzer.new
    #@output = analyzer.run
    @output = r_script
  end
  
  def r_script
		r = RinRuby.new
    
    r.eval "source('./lib/scripts/hello_world.R')"
    return r.pull 'test'

  end
end