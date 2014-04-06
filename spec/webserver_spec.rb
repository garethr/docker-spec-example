require "httparty"

describe "The web server" do
  it "should be listening on the open port" do
    port = ENV["PORT"] or 'localhost:80'
    HTTParty.get("http://#{port}").code.should == 200
  end
end
