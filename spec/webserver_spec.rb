require "httparty"

describe "The web server" do
  before(:all) do
    port = ENV["PORT"] or 'localhost:80'
    @response = HTTParty.get("http://#{port}")
  end

  it "should be listening on the open port" do
    @response.code.should == 200
  end

  it "should return the welcome page" do
    @response.body.to_s.should match "Hello Wercker"
  end
end
