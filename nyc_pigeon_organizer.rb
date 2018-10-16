def nyc_pigeon_organizer(data)
  pigeon_list ={}
  data[:gender].values.flatten.each do |name|
    pigeon_list[name] = {:color => [], :gender => [], :lives => []}
  end
  pigeon_values(:color, pigeon_list, data)
  pigeon_values(:gender, pigeon_list, data)
  pigeon_values(:lives, pigeon_list, data)
  pigeon_list
end

def pigeon_values(sym, pigeon_list, pigeon_data)
  pigeon_list.each do |name, hash|
    hash.each do |key, value|
      pigeon_data[sym].each do |sym_value, names|
        if names.include?(name)
          unless pigeon_list[name][sym].include?(sym_value.to_s)
            pigeon_list[name][sym] << sym_value.to_s
          end
        end
      end
    end
  end
  
  
end

