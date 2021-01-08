def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  x = 0
  collection.length.times do
    if collection[x][:item] == name
      return collection[x]
    end
    x += 1
  end
  return nil
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  ans = []
  x = 0
  cart.length.times do
    if find_item_by_name_in_collection(cart[x][:item],ans) != nil
      ans.push(cart[x])
      ans[x][:count] = 1
    else
      ans[x].each do |k,v|
        if k==:count
          v += 1
        end
      end
    end
    x += 1
  end
  return ans
    
end


  