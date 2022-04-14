require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
        yield (collection[i])
        return collection[i]
    i += 1
    end
end

#OR

def my_find(collection)
    i = 0
    while i < collection.length
      return collection[i] if yield(collection[i])
      i = i + 1
    end
  end