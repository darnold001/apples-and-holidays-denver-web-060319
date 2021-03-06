require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash [:summer] [:fourth_of_july] [1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, value|
    value << supply
  end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, value|
    value << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |item_k, item_v|
  supplies = []
  puts "#{item_k.to_s.capitalize}:"
  item_v.each do |k, v|
    puts"  #{k.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}: "+ "#{v*", "}"
end
end
end


def all_holidays_with_bbq(holiday_hash)
  bbq_h = []
holiday_hash.each do |s, h|
  holiday_hash[s].each do |h, supplies|
    holiday_hash[s][h].each do |supplies|
      if supplies == "BBQ"
    #include?("BBQ")
     bbq_h << h
    end
  end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
end
bbq_h
end
