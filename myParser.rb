require 'rubygems'
require 'plist'

class ProjectParser
   def initialize(project_path)
      @project_path = project_path
   end
   
   def relative_paths
     Plist::parse_xml(@project_path)['LastName']
   end
end
