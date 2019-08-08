module NmaxFnbx
  class Nmax
    attr_accessor :numbers

    def initialize(text, num)
      @text = text
      @num = num
    end

    def perform
      p Array(find_n_max)
    end

    def find_n_max
      @numbers = Set.new
      return if @num.negative?

      @text.each_line do |line|
        find_number(line)
      end

      @numbers.sort.last(@num).reverse
    end

    def find_number(line)
      line.scan(/\d+/) {|number| @numbers << number.to_i}
    end
  end
end
