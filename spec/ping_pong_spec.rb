require('rspec')
require('ping_pong')

  describe('Fixnum#ping_pong') do
    it("3 is replaced with ping") do
      expect((3).ping_pong()).to(eq([1,2,"ping"]))
    end
    it("5 is replaced with ping") do
      expect((5).ping_pong()).to(eq([1,2,"ping",4,"pong"]))
    end
    it("15 is replaced with ping") do
      expect((15).ping_pong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]))
    end
  end
