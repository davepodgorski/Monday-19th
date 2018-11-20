class Pizza

  def initialize (toppings)
    @toppings = toppings
    @cooked = false
    @slices = 0
  end

  def bake
    @cooked = true
  end

  def cut

    if @cooked && @slices < 6
      # cut the pizza
        @slices += 2
    end
  end

  def eat
    if @cooked && @slices > 0
      @slices -= 1
  end

end

hawaiian = Pizza.new ( ['ham', 'pineapple'])
@toppings= ["ham", "pineapple"]

  meat_lovers = Pizza.new ( ["sausage", "pepperoni", "ham"])
@toppings=( ["sausage", "pepperoni", "ham"])
hawaiian.bake
meat_lovers.bake
end
