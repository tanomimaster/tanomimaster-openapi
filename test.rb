require "bundler/setup"
Bundler.require



open_api_file = 'tanomimaster.yml'

# Check by Openapi3Parser
document = Openapi3Parser.load_file(open_api_file)

unless document.valid?
  pp document.errors 
  raise 'Syntax error found'
end



# Check by OpenAPIParser
# Just ensure the file is parsable by OpenAPIParser
open_api = OpenAPIParser.parse(YAML.load_file(open_api_file))


