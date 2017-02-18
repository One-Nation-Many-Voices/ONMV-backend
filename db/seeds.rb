# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require_relative '../csv/Town_Hall_Projects.csv'
require 'csv'
require_relative '../app/models/event.rb'

Event.destroy_all

file_contents = CSV.open('db/csv/thp.csv', headers: true, header_converters: :symbol)



class Sanitation

  def initialize(file_contents)
    @file_contents = file_contents
  end

  def seed

    @file_contents.each do |row|
      # byebug
      puts row[:location]
      Event.create(name: name(row),
      representative_name: representative_name(row),
      location: location(row),
      street: street(row),
      city: city(row),
      state: state(row),
      zip_code: zip_code(row),
      event_type: event_type(row),
      date: date(row),
      time: time(row),
      political_party: political_party(row),
      district: district(row),
      description: description(row)  )
    end
  end

  def name(row)
    if !row[:meeting_type].nil? || !row[:member].nil?
      row[:meeting_type].chomp + " with " + row[:member].chomp
    end
  end

  def representative_name(row)
    if !row[:member].nil?
      row[:member].chomp
    end
  end

  def location(row)
    if row[:location]
      row[:location].chomp
    end
  end

  def street(row)
    if row[:street_address]
      row[:street_address].chomp
    end
  end

  def city(row)
    if row[:city]
      row[:city].chomp
    end
  end

  def state(row)
    if row[:state]
      row[:state].chomp
    end
  end

  def zip_code(row)
    if row[:zip]
      row[:zip]
    end
  end

  def event_type(row)
    if row[:meeting_type]
      row[:meeting_type].chomp
    end
  end

  def date(row)
    if row[:date]
      row[:date]
    end
  end

  def time(row)
    if row[:time]
      row[:time]
    end
  end

  def political_party(row)
    if row[:party]
      row[:party][0].upcase
    end
  end

  def district(row)
    if row[:district]
      if row[:district] == "Senate"
        row[:district].chomp
      else
        "Congressional District #{row[:district].chomp}"
      end
    end
  end

  def description(row)
    if row[:notes]
      row[:notes].chomp
    end
  end
end

stuff = Sanitation.new(file_contents)

stuff.seed
