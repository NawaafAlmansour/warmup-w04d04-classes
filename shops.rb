# frozen_string_literal: true

class Shops
  attr_accessor :shoop_name
  def initialize(shoop_name)
    @shoop_name = shoop_name
    @product = []
    @store = []
   end

  def add_product(id, name, price, stock)
    @product = [id, name, price, stock]
    @store.push(@product)
    p @store
   end

  def stock(id)
    @store.length.times do |i|
      p "stock = #{@store[i][3]}" if @store[i][0] == id
    end
  end

  def sale(s)
    @store.length.times do |i|
      @store[i][2] = (@store[i][2] * (s * 0.01))
      p "sale = #{@store[i][2]}"
    end
   end

def purchase(id , stock )
  @store.length.times do |i|
   if @store[i][0] == id
    @store[i][3] = (@store[i][3] - stock)
    p "purchase = #{@store[i][0]} , #{@store[i][3]}"
  end
end
end

end

shop = Shops.new('ibook')
shop.add_product('d11', 'book', 30, 10)
shop.add_product('d21', 'cap', 20, 10)
shop.stock('d11')
shop.sale(50)

shopx = Shops.new('mapx')
shopx.add_product('d11', 'book', 30, 10)
shopx.add_product('d21', 'cap', 20, 10)
shopx.stock('d11')
shopx.sale(50)
shopx.purchase('d21', 2)
shop.purchase('d21', 2)
