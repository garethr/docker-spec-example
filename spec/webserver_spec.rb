require "httparty"

describe "The web server" do
  it "should be listening on the open port" do
    port = ENV["PORT"] or 80
    HTTParty.get("http://localhost:#{port}").code.should == 200
  end
end
