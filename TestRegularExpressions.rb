require_relative 'RegularExpressions'

RSpec.describe "get time method" do

  context "testing log entry" do
    it "will return the time column of the log" do
      time1 = '192.168.1.3 - - [18/Feb/2000:13:33:37 -0600] "GET / HTTP/1.0" 200 5073'
      time = get_time(time1)[0]
      expect(time).to eql "[18/Feb/2000:13:33:37 -0600]"
    end
  end
end

