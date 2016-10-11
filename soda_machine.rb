class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.size 
  end

  def find_soda(soda_brand)
    @sodas.first
    if @sodas == soda_brand
      @sodas
    else
      nil
    end
  end

  def sell(soda_brand)
    if @sodas.include?(soda_brand) == true
      @cash << @sodas.price
      @sodas.delete 
      @sodas
    else
      nil
    end
  end

end
