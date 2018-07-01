require 'pry'

def nyc_pigeon_organizer(data)
  new_hsh = new_hash_setup(data)

  new_hsh.each do |name, vals|
    data.each do |key, val|

      if new_hsh[name][key]
        val.each do |atrib, values|
          if values.include?(name)
            new_hsh[name][key] << atrib.to_s
          end
        end
      end
    end
  end
  new_hsh
end

def new_hash_setup(data)
  categories = data.keys
  pidgeon_names = data[categories.first].values.flatten.uniq
  hsh = {}

  pidgeon_names.each do |name|
    hsh[name] = {}
    categories.each do |cat|
      hsh[name][cat] = []
    end
  end
  hsh
end
