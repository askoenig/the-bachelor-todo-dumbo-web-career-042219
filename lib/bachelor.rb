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
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
