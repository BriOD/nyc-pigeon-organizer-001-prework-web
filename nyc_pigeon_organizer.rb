def nyc_pigeon_organizer(data)
      # write your code here!
      pigeons = {}
    
      data.each do |characteristics, vals|
            vals.each do |characteristic, names|
                  names.each do |name|
                        (pigeons[name] ||= {})[characteristics] ||= []
                        pigeons[name][characteristics] << characteristic.to_s
                  end
                end
          end
      pigeons
end