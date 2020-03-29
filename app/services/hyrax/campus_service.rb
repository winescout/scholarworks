module Hyrax
  module CampusService

    def self.get_campus_from_admin_set(admin_set_name)

      campuses = ["Bakersfield", "Chancellor", "Channel Islands", "Chico", "Dominguez Hills", "East Bay", "Fresno", "Fullerton", "Humboldt", "Long Beach", "Los Angeles", "Maritime", "Monterey Bay", "Moss Landing", "Northridge", "Pomona", "Sacramento", "San Bernardino", "San Diego", "San Francisco", "San Jose", "San Luis Obispo", "San Marcos", "Sonoma", "Stanislaus"]

      campuses.each do |campus|
        if admin_set_name.to_s.include?(campus.to_s)
          return campus.to_s
        end
      end

    end
  end
end
