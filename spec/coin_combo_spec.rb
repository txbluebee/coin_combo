require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it("will give one cent when user enters 1 cent") do
    expect(2.coin_combo()).to(eq("0 quarter(s) 0 dime(s) 0 nickel 2 cent(s)"))
  end
  it("will give one nickel when user enters 5 cents") do
    expect(5.coin_combo()).to(eq("0 quarter(s) 0 dime(s) 1 nickel 0 cent(s)"))
  end
  it("will give 1 nickel 2 cents when user enters 7 cents") do
    expect(7.coin_combo()).to(eq("0 quarter(s) 0 dime(s) 1 nickel 2 cent(s)"))
  end
  it("will give 1 nickel 2 cents when user enters 7 cents") do
    expect(19.coin_combo()).to(eq("0 quarter(s) 1 dime(s) 1 nickel 4 cent(s)"))
  end
  it("will give 2 quarters 1 dime 1 nickel 4 cents") do
    expect(69.coin_combo()).to(eq("2 quarter(s) 1 dime(s) 1 nickel 4 cent(s)"))
  end
end
