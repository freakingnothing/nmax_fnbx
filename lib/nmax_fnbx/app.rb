require_relative 'nmax'

module NmaxFnbx
  class App
    def initialize(textfile, n)
      @textfile = textfile
      @n = n
    end

    def perform
      numbers = Nmax.new(@textfile, @n)
      numbers.perform
    end
  end
end
