def consolidate_cart(cart)
  organized_cart = {}
  count = 0
  cart.each do |element|
    element.each do |fruit, hash|
      organized_cart[fruit] ||= hash
      organized_cart[fruit][:count] ||= 0
      organized_cart[fruit][:count] += 1
    end
  end
  return organized_cart
end

def apply_coupons(cart, coupons)


def apply_clearance(cart)
  discount = 0.20
   cart.each do |item, details|
     if cart[item][:clearance] == true
       cart[item][:price] = (cart[item][:price]*discount).round(1)
     end
   end
   cart
end

def checkout(cart, coupons)
  # code here
end
