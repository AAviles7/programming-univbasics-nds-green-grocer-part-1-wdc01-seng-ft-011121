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
    if find_item_by_name_in_collection(cart[x][:item],ans) == nil
      cart[x][:count] = 1
      ans.push(cart[x])
    else
      y = 0
      ans.length.times do
        if ans[y]==cart[x]
          ans[y][:count] += 1
        end
        y += 1
      end
    end
    x += 1
  end
  return ans
    
end


  