require '~/code/MyParser'

describe "integrated project parser" do
  it "parses a real-world project file" do
    parsed = ProjectParser.new('example.xml')
    parsed.relative_paths.should include('Schmidt')
  end
end
