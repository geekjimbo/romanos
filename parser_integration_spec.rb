class ProjectParser
   def initialize(project_path)
   end
   
   def relative_paths
     Plist::parse_xml
     ['Public']
   end
end
