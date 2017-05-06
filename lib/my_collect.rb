def my_collect(collection)
  if block_given?
    i = 0
    collection2 = []
    while i < collection.length
      yield collection[i]
        if collection[i].include? " "
            collection2 << collection[i].split(" ").first
        else
          collection2 << collection[i].upcase
        end
      i = i + 1
    end
    collection2
  else
     "No block given"
  end

end
