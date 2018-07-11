require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  
  data.each do |season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  numerator = 0
  denominator = 0
  
  data[season].each do |contestant|
    numerator += contestant["age"].to_f
    denominator += 1
  end
  return (numerator/denominator).round
end
