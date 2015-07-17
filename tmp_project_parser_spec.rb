require 'rubygems'
require 'plist'
require '~/code/myParser'

describe ProjectParser do
  it "extracts directories in the root of the project" do
    parser = ProjectParser.new('my_project.tmproj')
    Plist.should_receive(:parse_xml).with('my_project.tmproj').and_return(
      {'LastName' => 'Figueroa'})
    parser.relative_paths.should include('Figueroa')
  end
end
