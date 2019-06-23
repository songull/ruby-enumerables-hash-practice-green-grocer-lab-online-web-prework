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
  coupons.each do |coupon_hash|
      fruit_name = coupon_hash[:item]
      new_coupon_hash = {
        :price => coupon_hash[:cost],
        :clearance => "true",
        :count => coupon_hash[:num]
      }

       if cart.key?(fruit_name)
        new_coupon_hash[:clearance] = cart[fruit_name][:clearance]
        if cart[fruit_name][:count]>= new_coupon_hash[:count]
          new_coupon_hash[:count] = (cart[fruit_name][:count]/new_coupon_hash[:count]).floor
          cart[fruit_name][:count] = (coupon_hash[:num])%(cart[fruit_name][:count])
        end
        cart[fruit_name + " W/COUPON"] = new_coupon_hash
      end
      end
    return cart
end

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

end
