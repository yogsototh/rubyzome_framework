# The code in this file is part of the Rubyzome framework
# Rubyzome framework belongs to Luc Juggery and Yann Esposito

require 'rubygems'
require 'rack'
require 'rack-rewrite'

require 'global_config.rb'

require 'rubyzome/rubyzome.rb'

use Rack::Rewrite do
    rewrite '/','/static/index.html'
end
use Rack::Static, :urls => ["/css", "/js", "/img", "/static"], :root => "public"
run Rubyzome::RestfulDispatcher.new

