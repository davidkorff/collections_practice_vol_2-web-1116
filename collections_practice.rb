# your code goes here
def begins_with_r(array)
  b = nil
  array.each do |word|
    if word[0] == 'r'
      b = true
    else
      b = false
    end
  end
  b
end

def contain_a(array)
  b = []
  array.collect do |word|
    i = 0
    while i < word.length
      if word[i] == 'a'
        b << word
      end
      i+=1
    end
  end
  b
end

def first_wa(array)
  array.find do |word|
    (word[0] == 'w') && (word[1] == 'a')
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  blake_count = 0
  ashley_count = 0
  hash1 = {}
  hash2= {}
  final =[hash1,hash2]
  array.each do |hash|
    hash.each do |title,name|
      if name == "ashley"
        ashley_count +=1
        hash2[title] = name
        hash2[:count] = ashley_count
      elsif name == "blake"
        blake_count +=1
        hash1[title] = name
        hash1[:count] = blake_count
      end
    end
  end
  final
end

def merge_data(array_1,array_2)
  hash_1 = {}
  hash_2 = {}
  final = [hash_1,hash_2]
  stuff = []

  array_1.each do |hash|
    hash.each do |title,name|
      if name == "ashley"
        hash_2[title] = name
      elsif name == "blake"
        hash_1[title] = name
      end
    end
  end

  array_2.each do |hash|
    hash.each do |name,traits|
      if name == "blake"

        traits.each do |trait,num|
          hash_1[trait] = num
        end

      elsif name == "ashley"

        traits.each do |trait,num|
          hash_2[trait] = num
        end

      end
    end
  end

final
end

def find_cool(array)
  final = []
  array.each do |info|
    if info[:temperature] == "cool"
      final << info
    end
  end
  final
end

def organize_schools(info)
  hash = {}
  ny = []
  sf = []
  info.each do |school_name,rest|
    rest.each do |word,location|
      if location == "Chicago"
        hash[location] = [school_name]
      elsif location == "NYC"
        ny << school_name
        hash[location] = ny
      elsif location == "SF"
        sf << school_name
        hash[location] = sf  
      end
    end
  end
  hash
end
