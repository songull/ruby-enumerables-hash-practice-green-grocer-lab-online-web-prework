def consolidate_cart(cart)
  [
    {"AVOCADO" => {:price => 3.00, :clearance => true }},
    {"AVOCADO" => {:price => 3.00, :clearance => true }},
    {"KALE"    => {:price => 3.00, :clearance => false}}
  ]
end

def apply_coupons(cart, coupons)
  {
  "AVOCADO" => {:price => 3.00, :clearance => true, :count => 3},
  "KALE"    => {:price => 3.00, :clearance => false, :count => 1}
}
{:item => "AVOCADO", :num => 2, :cost => 5.00}
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
