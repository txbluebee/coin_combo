require('pry')

class Fixnum
  define_method(:coin_combo) do
    cent_counter = 0
    nickel_counter = 0
    dime_counter = 0
    quarter_counter = 0

    count = self
    until count == 0
      if count >= 25
        quarter_counter = count./(25)
        count = count.%(25)
      elsif count >= 10 && count < 25
        dime_counter = count./(10)
        count = count.%(10)
      elsif count >=5 && count < 10
        nickel_counter = count./(5)
        count = count.%(5)
      elsif count >=1 && count <5
        cent_counter = count
        count = 0
      end
    end
      quarter_counter.to_s + " quarter(s) " + dime_counter.to_s + " dime(s) " + nickel_counter.to_s + " nickel " + cent_counter.to_s + " cent(s)"
  end
end
