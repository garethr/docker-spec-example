require "httparty"

describe "The web server" do
  it "should be listening on port 80" do
    HTTParty.get("localhost").code.should == 200
  end
end
