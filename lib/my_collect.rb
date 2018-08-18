def my_collect
  i = 0
  collection = []
  while i < array.count
    collection << yield(array[i])
    i += 1
  end
  collection
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first