require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestant_array|
  if season_number == season
  contestant_array.each do |detail_hash|
    detail_hash.each do |key, value|
  if value == "Winner" 
    return detail_hash["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestant_array|
  contestant_array.each do |detail_hash|
    detail_hash.each do |key, value|
  if value == occupation 
    return detail_hash["name"]
          end
        end
      end
    end
  end

def count_contestants_by_hometown(data, hometown)
  x = 0
  data.each do |season_number, contestant_array|
    contestant_array.each do |detail_hash|
      detail_hash.each do |key, value|
       if key == "hometown" 
         if value == hometown
       x += 1
          end
        end
      end
    end
  end
    return x
end

def get_occupation(data, hometown)
  data.each do |season_number, contestant_array|
    contestant_array.each do |detail_hash|
     detail_hash.each do |key, value|
      if key == "hometown" 
        if value == hometown
          return detail_hash["occupation"]
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  x = 0 
  total_age = 0
 data.each do |season_number, contestant_array|
  if season_number == season
    contestant_array.each do |detail_hash|
     detail_hash.each do |key, value|
      if key == "age" 
        x += 1
          (total_age + value.to_f)
          binding.pry
          end
        end
      end
    end
  end
  return (total_age/x)
end

