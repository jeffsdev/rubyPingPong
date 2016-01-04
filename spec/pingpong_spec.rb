require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
  it('counts from 1 to a given number') do
    expect(2.pingpong).to(eq([1,2]))
  end
  it('returns "ping" for a number divisible by 3') do
    expect(3.pingpong).to(eq([1,2,"ping"]))
  end
  it('returns "pong" for a number divisible by 5') do
    expect(5.pingpong).to(eq([1,2,"ping",4,"pong"]))
  end
  it('returns "pingpong" for a number divisible by 15') do
    expect(15.pingpong).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]))
  end
end
